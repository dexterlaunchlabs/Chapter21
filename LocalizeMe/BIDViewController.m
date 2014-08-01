//
//  BIDViewController.m
//  LocalizeMe
//
//  Created by Dexter Launchlabs on 8/1/14.
//  Copyright (c) 2014 Dexter Launchlabs. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController
@synthesize localeLabel; @synthesize label1; @synthesize label2; @synthesize label3; @synthesize label4; @synthesize label5;
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
    NSLocale *locale = [NSLocale currentLocale]; NSString *displayNameString = [locale
                                                                                displayNameForKey:NSLocaleIdentifier
                                                                                value:[locale localeIdentifier]]; localeLabel.text = displayNameString;
    label1.text = NSLocalizedString(@"One", @"The number 1"); label2.text = NSLocalizedString(@"Two", @"The number 2"); label3.text = NSLocalizedString(@"Three", @"The number 3"); label4.text = NSLocalizedString(@"Four", @"The number 4"); label5.text = NSLocalizedString(@"Five", @"The number 5");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view. // e.g. self.myOutlet = nil;
    self.localeLabel = nil;
    self.label1 = nil;
    self.label2 = nil;
    self.label3 = nil;
    self.label4 = nil;
    self.label5 = nil;
}
@end
