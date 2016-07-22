# This file color codes the keywords from the extracted HR reports
# and outputs them first to LaTeX and then to PDF files.
# NOTE: headerYEAR.tex and footer.tex accompany this script.
#       The YEAR in headerYEAR.tex must be changed to the actual year.
#       headerYEAR.tex must then be renamed to header.tex

ls *.sen | parallel 'cp {} {.}.color'
ls *.color | parallel -q sed -i ':a;N;$!ba;s/\n/\n\n/g' {}

# Coloring Keywords:
ls *.color | parallel -q sed -i 's/sterilization/\\textcolor{Cerulean}{\\textbf{sterilization}}/g' {}
ls *.color | parallel -q sed -i 's/sexual work/\\textcolor{Cerulean}{\\textbf{sexual work}}/g' {}
ls *.color | parallel -q sed -i 's/impregnate/\\textcolor{Cerulean}{\\textbf{impregnate}}/g' {}
ls *.color | parallel -q sed -i 's/sexual act/\\textcolor{Cerulean}{\\textbf{sexual act}}/g' {}
ls *.color | parallel -q sed -i 's/testicular/\\textcolor{Cerulean}{\\textbf{testicular}}/g' {}
ls *.color | parallel -q sed -i 's/prostitut/\\textcolor{Cerulean}{\\textbf{prostitut}}/g' {}
ls *.color | parallel -q sed -i 's/stripping/\\textcolor{Cerulean}{\\textbf{stripping}}/g' {}
ls *.color | parallel -q sed -i 's/abortion/\\textcolor{Cerulean}{\\textbf{abortion}}/g' {}
ls *.color | parallel -q sed -i 's/criminal/\\textcolor{Cerulean}{\\textbf{criminal}}/g' {}
ls *.color | parallel -q sed -i 's/gang-rap/\\textcolor{Cerulean}{\\textbf{gang-rap}}/g' {}
ls *.color | parallel -q sed -i 's/humiliat/\\textcolor{Cerulean}{\\textbf{humiliat}}/g' {}
ls *.color | parallel -q sed -i 's/pregnanc/\\textcolor{Cerulean}{\\textbf{pregnanc}}/g' {}
ls *.color | parallel -q sed -i 's/pregnant/\\textcolor{Cerulean}{\\textbf{pregnant}}/g' {}
ls *.color | parallel -q sed -i 's/sex work/\\textcolor{Cerulean}{\\textbf{sex work}}/g' {}
ls *.color | parallel -q sed -i 's/stripped/\\textcolor{Cerulean}{\\textbf{stripped}}/g' {}
ls *.color | parallel -q sed -i 's/testicle/\\textcolor{Cerulean}{\\textbf{testicle}}/g' {}
ls *.color | parallel -q sed -i 's/assault/\\textcolor{Cerulean}{\\textbf{assault}}/g' {}
ls *.color | parallel -q sed -i 's/exploit/\\textcolor{Cerulean}{\\textbf{exploit}}/g' {}
ls *.color | parallel -q sed -i 's/gangrap/\\textcolor{Cerulean}{\\textbf{gangrap}}/g' {}
ls *.color | parallel -q sed -i 's/genital/\\textcolor{Cerulean}{\\textbf{genital}}/g' {}
ls *.color | parallel -q sed -i 's/mutilat/\\textcolor{Cerulean}{\\textbf{mutilat}}/g' {}
ls *.color | parallel -q sed -i 's/sex act/\\textcolor{Cerulean}{\\textbf{sex act}}/g' {}
ls *.color | parallel -q sed -i 's/anally/\\textcolor{Cerulean}{\\textbf{anally}}/g' {}
ls *.color | parallel -q sed -i 's/breast/\\textcolor{Cerulean}{\\textbf{breast}}/g' {}
ls *.color | parallel -q sed -i 's/molest/\\textcolor{Cerulean}{\\textbf{molest}}/g' {}
ls *.color | parallel -q sed -i 's/nipple/\\textcolor{Cerulean}{\\textbf{nipple}}/g' {}
ls *.color | parallel -q sed -i 's/nudity/\\textcolor{Cerulean}{\\textbf{nudity}}/g' {}
ls *.color | parallel -q sed -i 's/raping/\\textcolor{Cerulean}{\\textbf{raping}}/g' {}
ls *.color | parallel -q sed -i 's/rapist/\\textcolor{Cerulean}{\\textbf{rapist}}/g' {}
ls *.color | parallel -q sed -i 's/rectal/\\textcolor{Cerulean}{\\textbf{rectal}}/g' {}
ls *.color | parallel -q sed -i 's/rectum/\\textcolor{Cerulean}{\\textbf{rectum}}/g' {}
ls *.color | parallel -q sed -i 's/vagina/\\textcolor{Cerulean}{\\textbf{vagina}}/g' {}
ls *.color | parallel -q sed -i 's/violen/\\textcolor{Cerulean}{\\textbf{violen}}/g' {}
ls *.color | parallel -q sed -i 's/abort/\\textcolor{Cerulean}{\\textbf{abort}}/g' {}
ls *.color | parallel -q sed -i 's/abuse/\\textcolor{Cerulean}{\\textbf{abuse}}/g' {}
ls *.color | parallel -q sed -i 's/crime/\\textcolor{Cerulean}{\\textbf{crime}}/g' {}
ls *.color | parallel -q sed -i 's/naked/\\textcolor{Cerulean}{\\textbf{naked}}/g' {}
ls *.color | parallel -q sed -i 's/penis/\\textcolor{Cerulean}{\\textbf{penis}}/g' {}
ls *.color | parallel -q sed -i 's/slave/\\textcolor{Cerulean}{\\textbf{slave}}/g' {}
ls *.color | parallel -q sed -i 's/sodom/\\textcolor{Cerulean}{\\textbf{sodom}}/g' {}
ls *.color | parallel -q sed -i 's/anal/\\textcolor{Cerulean}{\\textbf{anal}}/g' {}
ls *.color | parallel -q sed -i 's/anus/\\textcolor{Cerulean}{\\textbf{anus}}/g' {}
ls *.color | parallel -q sed -i 's/nude/\\textcolor{Cerulean}{\\textbf{nude}}/g' {}
ls *.color | parallel -q sed -i 's/rape/\\textcolor{Cerulean}{\\textbf{rape}}/g' {}
ls *.color | parallel -q sed -i 's/sex/\\textcolor{Cerulean}{\\textbf{sex}}/g' {}

#Check for title case too:
ls *.color | parallel -q sed -i 's/Sterilization/\\textcolor{Cerulean}{\\textbf{Sterilization}}/g' {}
ls *.color | parallel -q sed -i 's/Sexual Work/\\textcolor{Cerulean}{\\textbf{Sexual Work}}/g' {}
ls *.color | parallel -q sed -i 's/Impregnate/\\textcolor{Cerulean}{\\textbf{Impregnate}}/g' {}
ls *.color | parallel -q sed -i 's/Sexual Act/\\textcolor{Cerulean}{\\textbf{Sexual Act}}/g' {}
ls *.color | parallel -q sed -i 's/Testicular/\\textcolor{Cerulean}{\\textbf{Testicular}}/g' {}
ls *.color | parallel -q sed -i 's/Prostitut/\\textcolor{Cerulean}{\\textbf{Prostitut}}/g' {}
ls *.color | parallel -q sed -i 's/Stripping/\\textcolor{Cerulean}{\\textbf{Stripping}}/g' {}
ls *.color | parallel -q sed -i 's/Abortion/\\textcolor{Cerulean}{\\textbf{Abortion}}/g' {}
ls *.color | parallel -q sed -i 's/Criminal/\\textcolor{Cerulean}{\\textbf{Criminal}}/g' {}
ls *.color | parallel -q sed -i 's/Gang-Rap/\\textcolor{Cerulean}{\\textbf{Gang-Rap}}/g' {}
ls *.color | parallel -q sed -i 's/Humiliat/\\textcolor{Cerulean}{\\textbf{Humiliat}}/g' {}
ls *.color | parallel -q sed -i 's/Pregnanc/\\textcolor{Cerulean}{\\textbf{Pregnanc}}/g' {}
ls *.color | parallel -q sed -i 's/Pregnant/\\textcolor{Cerulean}{\\textbf{Pregnant}}/g' {}
ls *.color | parallel -q sed -i 's/Sex Work/\\textcolor{Cerulean}{\\textbf{Sex Work}}/g' {}
ls *.color | parallel -q sed -i 's/Stripped/\\textcolor{Cerulean}{\\textbf{Stripped}}/g' {}
ls *.color | parallel -q sed -i 's/Testicle/\\textcolor{Cerulean}{\\textbf{Testicle}}/g' {}
ls *.color | parallel -q sed -i 's/Assault/\\textcolor{Cerulean}{\\textbf{Assault}}/g' {}
ls *.color | parallel -q sed -i 's/Exploit/\\textcolor{Cerulean}{\\textbf{Exploit}}/g' {}
ls *.color | parallel -q sed -i 's/Gangrap/\\textcolor{Cerulean}{\\textbf{Gangrap}}/g' {}
ls *.color | parallel -q sed -i 's/Genital/\\textcolor{Cerulean}{\\textbf{Genital}}/g' {}
ls *.color | parallel -q sed -i 's/Mutilat/\\textcolor{Cerulean}{\\textbf{Mutilat}}/g' {}
ls *.color | parallel -q sed -i 's/Nipple/\\textcolor{Cerulean}{\\textbf{Nipple}}/g' {}
ls *.color | parallel -q sed -i 's/Sex Act/\\textcolor{Cerulean}{\\textbf{Sex Act}}/g' {}
ls *.color | parallel -q sed -i 's/Anally/\\textcolor{Cerulean}{\\textbf{Anally}}/g' {}
ls *.color | parallel -q sed -i 's/Breast/\\textcolor{Cerulean}{\\textbf{Breast}}/g' {}
ls *.color | parallel -q sed -i 's/Molest/\\textcolor{Cerulean}{\\textbf{Molest}}/g' {}
ls *.color | parallel -q sed -i 's/Nudity/\\textcolor{Cerulean}{\\textbf{Nudity}}/g' {}
ls *.color | parallel -q sed -i 's/Raping/\\textcolor{Cerulean}{\\textbf{Raping}}/g' {}
ls *.color | parallel -q sed -i 's/Rapist/\\textcolor{Cerulean}{\\textbf{Rapist}}/g' {}
ls *.color | parallel -q sed -i 's/Rectal/\\textcolor{Cerulean}{\\textbf{Rectal}}/g' {}
ls *.color | parallel -q sed -i 's/Rectum/\\textcolor{Cerulean}{\\textbf{Rectum}}/g' {}
ls *.color | parallel -q sed -i 's/Vagina/\\textcolor{Cerulean}{\\textbf{Vagina}}/g' {}
ls *.color | parallel -q sed -i 's/Violen/\\textcolor{Cerulean}{\\textbf{Violen}}/g' {}
ls *.color | parallel -q sed -i 's/Abort/\\textcolor{Cerulean}{\\textbf{Abort}}/g' {}
ls *.color | parallel -q sed -i 's/Abuse/\\textcolor{Cerulean}{\\textbf{Abuse}}/g' {}
ls *.color | parallel -q sed -i 's/Crime/\\textcolor{Cerulean}{\\textbf{Crime}}/g' {}
ls *.color | parallel -q sed -i 's/Naked/\\textcolor{Cerulean}{\\textbf{Naked}}/g' {}
ls *.color | parallel -q sed -i 's/Penis/\\textcolor{Cerulean}{\\textbf{Penis}}/g' {}
ls *.color | parallel -q sed -i 's/Slave/\\textcolor{Cerulean}{\\textbf{Slave}}/g' {}
ls *.color | parallel -q sed -i 's/Sodom/\\textcolor{Cerulean}{\\textbf{Sodom}}/g' {}
ls *.color | parallel -q sed -i 's/Anal/\\textcolor{Cerulean}{\\textbf{Anal}}/g' {}
ls *.color | parallel -q sed -i 's/Anus/\\textcolor{Cerulean}{\\textbf{Anus}}/g' {}
ls *.color | parallel -q sed -i 's/Nude/\\textcolor{Cerulean}{\\textbf{Nude}}/g' {}
ls *.color | parallel -q sed -i 's/Rape/\\textcolor{Cerulean}{\\textbf{Rape}}/g' {}
ls *.color | parallel -q sed -i 's/Sex/\\textcolor{Cerulean}{\\textbf{Sex}}/g' {}

# Prep for LaTeX processing:
ls *.color | parallel -q sed -i 's/\$/\\\$/g' {}
ls *.color | parallel -q sed -i 's/\&/\\\&/g' {}
ls *.color | parallel -q sed -i 's/\[//g' {}
ls *.color | parallel -q sed -i 's/\]//g' {}
ls *.color | parallel -q sed -i 's/\*//g' {}
ls *.color | parallel -q sed -i 's/\^//g' {}
ls *.color | parallel -q sed -i 's/\_//g' {}
ls *.sen | parallel 'cp header.tex header_{.}.tex'
ls *.sen | parallel -q sed -i 's/FILENAME/{.}/g' header_{.}.tex
ls header_*.tex | parallel -q sed -i 's/\_/\ /g' {}
ls header_*.tex | parallel -q sed -i 's/SD\ //g' {}
ls header_*.tex | parallel -q sed -i 's/2001/2001,/g' {}
ls *.color | parallel 'cat header_{.}.tex {} footer.tex > {.}.tex'

# PDF-LaTex all COUNTRY.tex files.p
ls *.color | parallel 'pdflatex {.}.tex'

# Clean up directory:
rm header_*.tex
ls *.color | parallel 'rm {.}.tex'
rm *.aux *.color
rm *.log
