#!/usr/bin/python

print "process word list"

f1 = open("wordList.txt", "r")
f2 = open("vocabList.txt", "w")

for line in f1:
	# print line 
	arr = line.split()
	print arr[0]
	f2.write(arr[0]+"\n")
	
f1.close()
f2.close() 