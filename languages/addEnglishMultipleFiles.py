#!/usr/bin/python
import glob

print "process word list"



#languageList = ['arabic', 'bengali', 'chineseSimplified', 'filipino', 'french', \
#				'german', 'hebrew', 'hindi', 'malay', 'polish', 'portugese'] 

#for lan in languageList:
#	print lan + " "

fileArray = glob.glob("/paul/iphone/vocabAce/languages/*.txt")

languageList = []

for file1 in fileArray:
	splitArray = file1.split('_');
	num = splitArray.__len__()
	if (num > 2):
		wordOnlyStr = splitArray[2]
		if (wordOnlyStr == "wordOnly.txt"):
			lanuageFound = splitArray[1]
			print "languageFound: " + lanuageFound
			languageList.append(lanuageFound)

for language in languageList:
	print "@\"" + language + "\",", 

produceFiles = 0
if (produceFiles == 1):
	for language in languageList:
		wordOnlyFile = "sat_" + language + "_wordOnly.txt"
		translatedFile = "translated_" + language + "WithEnglish.txt"
		f1 = open("vocabList.txt", "r")
		f2 = open(wordOnlyFile, "r")
		f3 = open(translatedFile, "w")

		for line in f1:
			translatedWord = f2.readline() 
			# rstrip is same as chomp
			f3.write(line.rstrip() + ": " + translatedWord.rstrip() + "\n")
	
		f1.close()
		f2.close() 
		f3.close()

