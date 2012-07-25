//
//  YViewController.m
//  Yeah
//
//  Created by Ben Butler on 8/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "YViewController.h"

@interface YViewController ()


@end

@implementation YViewController 

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"ARGH!!"
                                                        message:@"REALLY??" delegate:nil cancelButtonTitle:@"NO!!" otherButtonTitles:@"FUUUuuuuck...", nil];
    [alertView show];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSString *) yesButtonTitle {
    return @"Yes";
}
- (NSString *) noButtonTitle {
    return @"No";
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIAlertView *alertView = [[UIAlertView alloc] 
                              initWithTitle:@"Rating"
                              message:@"Can you rate this app?"
                              delegate:self
                              cancelButtonTitle:[self noButtonTitle]
                               otherButtonTitles:[self yesButtonTitle], nil];
                              [alertView show];                                
    
}

-(void) alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    
    if([buttonTitle isEqualToString:[self yesButtonTitle]]) {
        NSLog(@"User pressed the yes button.");
    } 
    else if ([buttonTitle isEqualToString:[self noButtonTitle]]) {
        NSLog(@"User pressed the no button.");
    }
}


@end
