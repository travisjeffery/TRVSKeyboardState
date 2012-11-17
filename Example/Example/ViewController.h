//
//  ViewController.h
//  Example
//
//  Created by Travis Jeffery on 2012-11-17.
//  Copyright (c) 2012 Daft Co. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate>

@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) UIButton *button;

@end
