//
//  SetWordListViewController.h
//  vocabAce
//
//  Created by Paul Yang on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "setHashObject.h"

@interface SetWordListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    AppDelegate *appDelegate;
    int currentSet;
    setHashObject *set;
}

@end
