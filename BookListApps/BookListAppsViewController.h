//
//  BookListAppsViewController.h
//  BookListApps
//
//  Created by Goda on 13/6/25.
//  Copyright (c) 2013年 Goda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookListAppsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *bookname;
@property (strong, nonatomic) IBOutlet UILabel *isbn;
@property (strong, nonatomic) IBOutlet UILabel *author;
@property (strong, nonatomic) IBOutlet UILabel *tag;
@property (strong, nonatomic) IBOutlet UILabel *booktype;
@property (strong, nonatomic) IBOutlet UITextView *description;

@end
