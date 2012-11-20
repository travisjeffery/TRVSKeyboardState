//
//  TRVSKeyboardState.h
//  Daft Co.
//
//  Created by Travis Jeffery on 2012-11-16.
//
//

#import <Foundation/Foundation.h>

typedef void(^TRVSKeyboardStateKeyboardDidHideBlock)();
typedef void(^TRVSKeyboardStateKeyboardDidShowBlock)();

@interface TRVSKeyboardState : NSObject

+ (TRVSKeyboardState *)sharedInstance;

@property (nonatomic, readonly) BOOL hidden;
@property (nonatomic, copy, readwrite) TRVSKeyboardStateKeyboardDidHideBlock keyboardDidHideBlock;
@property (nonatomic, copy, readwrite) TRVSKeyboardStateKeyboardDidShowBlock keyboardDidShowBlock;

@end
