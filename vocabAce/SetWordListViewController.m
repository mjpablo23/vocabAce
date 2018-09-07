//
//  SetWordListViewController.m
//  vocabAce
//
//  Created by Paul Yang on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SetWordListViewController.h"

@interface SetWordListViewController ()

@end

@implementation SetWordListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    appDelegate = [[UIApplication sharedApplication] delegate];
    currentSet = appDelegate.wordDataModel.currentSetIndex;
    set = [appDelegate.wordDataModel.setMarkerArray objectAtIndex:currentSet];
    
    [self.navigationItem setTitle:[NSString stringWithFormat:@"Set %d word list", currentSet]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

# pragma mark table view methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;  
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	int num = set.numWordsInSet.intValue;
	return num;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
							 SimpleTableIdentifier];
	if (cell == nil) {
		cell = [[[UITableViewCell alloc]
				 initWithStyle:UITableViewCellStyleDefault
				 reuseIdentifier:SimpleTableIdentifier] autorelease];
	}
    
    NSUInteger row = [indexPath row];
    
    int wordArrayIndex = row + set.startIndexInWordArray.intValue;
    Word *wd = [appDelegate.wordDataModel.wordArray objectAtIndex:wordArrayIndex];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", wd.word];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    int wordArrayIndex = indexPath.row + set.startIndexInWordArray.intValue;
    [appDelegate.wordDataModel setCurrentWord:wordArrayIndex];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
