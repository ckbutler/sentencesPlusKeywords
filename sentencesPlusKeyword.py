# sentences.py by Christopher K. Butler, copyright 2016
#
# DESCRIPTION:
# Converting raw text in fileName.txt to each line representing one sentence
# into new fileName.{type}.
#
# SYNTAX:
#       python sentencesPlusKeyword.py fileName.txt keywordFile.txt sen/csv
#
# EXAMPLE:
#
#       python sentencesPlusKeyword.py RWA_2008_State_Department.txt SVkeywords.txt sen
#       python sentencesPlusKeyword.py RWA_2008_State_Department.txt SVkeywords.txt csv


import sys
import nltk
import re

# Flag for debugging:
VERBOSE = False

# Read command line arguments:
argNum=0
for arg in sys.argv:
    if argNum==1:
        fileName  = str(sys.argv[1])
    if argNum==2:
        keywordFile = str(sys.argv[2])
    if argNum==3:
        outType = str(sys.argv[3])
    argNum=argNum+1
argNum=argNum-1 # Correcting for last pass in argVector
if VERBOSE:
    print(fileName)
    print(keywordFile)
    print(outType)

# Implicitly check that fileName ends in ".txt" and
# explicitly check that outType is "sen" or "csv" and create outFileName:
if outType.lower()=="sen":
    outFileName = fileName.replace(".txt",".sen")
if outType.lower()=="csv":
    outFileName = fileName.replace(".txt",".csv")
if outType.lower()!="sen" and outType.lower()!="csv":
    print("Inappropriate output type")
    exit()

# Open the text file as a single string, decode & encode, and create list of
# sentences using the nltk module:
with open(fileName, 'r') as myfile:
    text=myfile.read().replace('\n', ' ')
newstr = re.sub(r'(.)\.([A-Z])', r'\1. \2', text)
decoded_str=newstr.decode('utf8')
encoded_str=decoded_str.encode('ascii','ignore')
sents = nltk.sent_tokenize(encoded_str)
if VERBOSE:
    print("Number of sentences: "+str(len(sents)))

# Open the keywordFile and put into a list:
f = open(keywordFile,'r')
kwList = [line.strip() for line in f]
f.close()
if VERBOSE:
    print("Keyword List:")
    for kw in kwList:
        print("\t"+kw)

# I'm having a devil of a time getting keywords like <abort> to behave/
# recognize word boundaries. re.search(r'\babort\b',s) works, but
# hard-coding strings such as kw = "r'\\babort\\b'" does not.

# Generate list of potentiallyRelevantSentences (prs) equal in length to sents:
prs = [0]*len(sents)

# Search each sentence for keywords, flagging them in prs:
for i,s in enumerate(sents):
   for kw in kwList:
       if re.search(kw,s,flags=re.IGNORECASE):
            prs[i]=1

# Flag context sentences above and below those with keywords
# (while also keeping the flag of 1 for sentences with keywords):
context=[-3,-2,-1,1,2,3]
for i,p in enumerate(prs):
    if p==1:
        for c in context:
            if i+c>0 and i+c<len(sents):
                if prs[i+c]==0:prs[i+c]=0.5

# Don't output an empty file:
if VERBOSE:
    print("Potentially relevant sentences: "+str(sum(prs)))
if sum(prs)==0:
    print(fileName+": No potentially relevant sentences found.")
    exit()

# Output file of potentially relevant sentences:
outFile = open(outFileName, 'w')
newline=""
header="sentenceID"+"\t"+"svKeyword"+"\t"+"relevant"+"\t"+"block"+"\t"+"summary"+"\t"+"actorNamed"+"\t"+"actorGov"+"\t"+"legal"+"\t"+"temporal"+"\t"+"spatial"+"\t"+"svSeverity"+"\t"+"explanation"+"\t"+"sentence"
if VERBOSE and outType=="csv":
    print("CSV Basic Header:")
    for col in header.split("\t"):
        print("\t"+col)
if outType=="sen":
    for i,p in enumerate(prs):
        if p==0.5:
            newline = str(i)+'- '+sents[i]+'\n'
            if VERBOSE: print(newline)
            outFile.write(newline)
        if p==1:
            newline = str(i)+': '+sents[i]+'\n'
            if VERBOSE: print(newline)
            outFile.write(newline)
        newline=""
if outType=="csv":
    outFile.write(header+'\n')
    for i,p in enumerate(prs):
        if p==0.5:
            s=sents[i]
            newline = str(i)+'\t'+'0'+'\t\t\t\t\t\t\t\t\t\t\t'+"\""+s.replace("\"","\'")+"\""+'\n'
            outFile.write(newline)
        if p==1:
            s=sents[i]
            newline = str(i)+'\t'+'1'+'\t\t\t\t\t\t\t\t\t\t\t'+"\""+s.replace("\"","\'")+"\""+'\n'
            outFile.write(newline)
outFile.close()
print(outFileName+" written.")
exit()

# HISTORY:
#
# Date       Name        Reason
# ---------- ----------- -------------------------------------------------------
# 06-22-2016 CK Butler   Created working file
# 06-29-2016 CK Butler   Added option of printing to formatted CSV
#                        and VERBOSE output for debugging
# 06-30-2016 CK Butler   Modified CSV formatting
# 07-22-2016 CK Butler   Fixed 'mushed.Sentences'
