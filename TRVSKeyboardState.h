//
//  TRVSKeyboardState.h
//  Daft Co.
//
//  Created by Travis Jeffery on 2012-11-16.
//
//

#import <Foundation/Foundation.h>

@interface TRVSKeyboardState : NSObject

+ (TRVSKeyboardState *)sharedInstance;

@property (nonatomic, readonly) BOOL hidden;

@end
