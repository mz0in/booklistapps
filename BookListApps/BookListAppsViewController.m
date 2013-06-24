//
//  BookListAppsViewController.m
//  BookListApps
//
//  Created by Goda on 13/6/25.
//  Copyright (c) 2013年 Goda. All rights reserved.
//

#import "BookListAppsViewController.h"
#import "AFJSONRequestOperation.h"

@interface BookListAppsViewController ()

@end

@implementation BookListAppsViewController

@synthesize bookname;
@synthesize isbn;
@synthesize author;
@synthesize tag;
@synthesize booktype;
@synthesize description;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSURL *url = [[NSURL alloc] initWithString:@"http://bookinfoapplist.herokuapp.com/booklistapps/5.json"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request
                                                                                        success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON)
                                         {
                                             
                                             // Read the data from the returned JSON object
                                             bookname.text = [NSString stringWithFormat:@"%@ ", JSON[@"bookname"]];
                                             isbn.text = [NSString stringWithFormat:@"%@ ", JSON[@"isbn"]];
                                             author.text = [NSString stringWithFormat:@"%@ ", JSON[@"author"]];
                                             tag.text = [NSString stringWithFormat:@"%@ ", JSON[@"tag"]];
                                             booktype.text = [NSString stringWithFormat:@"%@ ", JSON[@"booktype"]];
                                             description.text = JSON[@"note"];
                                             
                                         } failure:^(NSURLRequest *request, NSHTTPURLResponse *response,NSError *error, id JSON)
                                         {
                                             
                                             NSLog(@"NSError: %@",error.localizedDescription);
                                             
                                         }];
    [operation start];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
