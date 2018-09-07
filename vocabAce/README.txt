VocabAce is an iOS app for memorizing vocabulary words for the SAT or GRE.  
It features a "cover" for the definition so the user can recall the word on their own first.  

VocabAce is sized to run on iPhone 4 and 4s.  It is not currently sized for iPhone 5 or 6.  
I did all the sizing of the text views programmatically instead of using interface builder.  

The current version is a work-in-progress that I started in 2012.  I was planning to add more features to it.  

usage: 
Tap the green cover to reveal the definition, synonyms, and translation of the current word. 
Press the "next word" button to go to the next word.
Use the segmented control to toggle between short and long definitions.
Use options to change languages. 

code: 
Relevant code to look at: 
1) cardViewController.m -- This is where words, definitions get loaded into the view.  
2) databaseModel.m --  This is where the words are loaded into the application from the sqlite database upon initialization.
3) Word.m -- This is the object for a vocabulary word, containing its definitions, translation, etc.  
 

