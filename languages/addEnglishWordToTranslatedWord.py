#!/usr/bin/python

print "process word list"

f1 = open("vocabList.txt", "r")

languageList = ['arabic', 'bengali', 'chineseSimplified', 'filipino', 'french', \
				'german', 'hebrew', 'hindi', 'malay', 'polish', 'portugese'] 

for lan in languageList:
	print lan + " "

print os.listdir()

translatedWordFile = ""

f2 = open("sat_telugu_wordOnly.txt", "r")
f3 = open("teluguWithEnglish.txt", "w")

for line in f1:
	translatedWord = f2.readline() 
	# rstrip is same as chomp
	#f3.write(line.rstrip() + ": " + translatedWord.rstrip() + "\n")
	
f1.close()
f2.close() 
f3.close()

