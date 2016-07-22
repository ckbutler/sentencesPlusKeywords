# sentencesPlusKeywords
Generate CSV and PDF files of potentially relevant sentences for human coders.

Files included:
    sentencesPlusKeyword.py
    SVkeywords.txt
    colorKeywords.sh
    header.tex
    footer.tex

The files in this directory pull out potentially relevant sentences (PRSs) using a provided keyword list (here, SVkeywords.txt) and generate PDFs with color-coded keywords via pdflatex (the keywords here are hard-coded in colorKeywords.sh). The python program is dual-purpose, generating CSV files of the PRSs with one call and then generating .sen files of the PRSs for colorKeywords.sh to use. (header.tex and footer.tex are used by colorKeywords.sh.)


STEP 1: Place the txt country-reports to be processed (from downloadedDocumentArchive/fulldata_20160612.zip) into a directory with the files in this directory. For example, *_2004_State_Department.txt


STEP 2 (assuming `parallel' is installed): Generate CSV files for coders:

ls *_2004_State_Department.txt | parallel 'python sentencesPlusKeyword.py {} SVkeywords.txt csv'

Alternatively, process one file at a time:
python sentencesPlusKeyword.py AFG_2004_State_Department.pdf SVkeywords.txt csv


STEP 3 (assuming `parallel' is installed): Generate .sen files for pre-processing:

ls *_2004_State_Department.txt | parallel 'python sentencesPlusKeyword.py {} SVkeywords.txt sen'

Alternatively, process one file at a time:
python sentencesPlusKeyword.py AFG_2004_State_Department.pdf SVkeywords.txt csv


STEP 4: Generate color-coded PDFs:
sh colorKeywords.sh

Technical note on Step 4: Assumes the GNU version of `sed' is installed (rather than the Mac Os version).


STEP 5: Move the CSV and PDF files to an appropriate directory of SV_dataCollection for the human coders. Then delete the .sen files and the *_2004_State_Department.txt files. NOTE: Do not 'rm *.txt', which will delete this README file along with the SVkeywords.txt file.
