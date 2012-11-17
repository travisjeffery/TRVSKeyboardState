//
//  ViewController.m
//  Example
//
//  Created by Travis Jeffery on 2012-11-17.
//  Copyright (c) 2012 Daft Co. All rights reserved.
//

#import "ViewController.h"
#import "TRVSKeyboardState.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGSize boundsSize = self.view.bounds.size;

    self.textView = [[UITextView alloc] initWithFrame:CGRectZero];
    self.textView.frame = self.view.bounds;
    self.textView.text = @"Here's a text view to tap and show the keyboard.\n\nHit the `Done` key to hide the keyboard.\n\n\n\n\n\n— Travis Jeffery (http://github.com/travisjeffery)";
    self.textView.font = [UIFont systemFontOfSize:20.f];
    self.textView.returnKeyType = UIReturnKeyDone;
    self.textView.delegate = self;
    [self.view addSubview:self.textView];
    
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.button.titleLabel setFont:[UIFont systemFontOfSize:20.f]];
    [self.button setTitle:@"Keyboard's State???" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(alertKeyboardState) forControlEvents:UIControlEventTouchUpInside];
    [self.button sizeToFit];
    self.button.center = CGPointMake(roundf(boundsSize.width/2.f), roundf(boundsSize.height/2.f) - 30.f);
    [self.view addSubview:self.button];
}

#pragma mark - Actions

- (void)alertKeyboardState
{
    NSString *title = [TRVSKeyboardState sharedInstance].hidden ? @"Keyboard's hidden!" : @"Keyboard's showing!";
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:nil delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
    [alertView show];
}

#pragma mark - UITextViewDelegate

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    BOOL shouldChange = YES;
    
    if ([text isEqualToString:@"\n"]){
        [self.view endEditing:YES];
        shouldChange = NO;
    }
    
    return shouldChange;
}

@end
