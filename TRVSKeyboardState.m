//
//  TRVSKeyboardState.m
//  Daft Co.
//
//  Created by Travis Jeffery on 2012-11-16.
//
//

#import "TRVSKeyboardState.h"

@interface TRVSKeyboardState()

@property (nonatomic, readwrite) BOOL hidden;

@end

@implementation TRVSKeyboardState

@synthesize hidden=_hidden;

+ (TRVSKeyboardState *)sharedInstance
{
    static dispatch_once_t onceToken;
    __strong static id _sharedInstance = nil;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}

- (id)init
{
    self = [super init];
    if (self == nil) return nil;
    
    NSNotificationCenter *defaultCenter = [NSNotificationCenter defaultCenter];
    [defaultCenter addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    [defaultCenter addObserver:self selector:@selector(keyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];
    self.hidden = YES;
    self.keyboardDidHideBlock = nil;
    self.keyboardDidShowBlock = nil;
    
    return self;
}

- (void)keyboardDidShow:(NSNotification *)notification
{
    self.hidden = NO;
    if (self.keyboardDidShowBlock){
        self.keyboardDidShowBlock();
        self.keyboardDidShowBlock = nil;
    }
}

- (void)keyboardDidHide:(NSNotification *)notification
{
    self.hidden = YES;
    if (self.keyboardDidHideBlock){
        self.keyboardDidHideBlock();
        self.keyboardDidHideBlock = nil;
    }
}

@end
