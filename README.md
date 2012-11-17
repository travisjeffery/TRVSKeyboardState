# TRVSKeyboardState

A small little helper object to check whether the keyboard is showing or
hidden. 

### Usage

You just need the `TRVSKeyboardState.{h,m}` files.

You should initialize the object as early as possible, it also assumes
that at the time you initialize the object the keyboard is hidden. So a good
place is your app delegate's `application:didFinishLaunchingWithOptions:`, like
so:

``` objective-c
#import "TRVSKeyboardState.h"

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  // stuff...
  [TRVSKeyboardState sharedInstance];
  // more stuff..
}
```
Then you're able to check the state of the keyboard at any point with: 

``` objective-c
[TRVSKeyboardState sharedInstance].hidden

// E.g.

if ([TRVSKeyboardState sharedInstance].hidden)
	// do something because the keyboard is hidden
else 
	// do something else because the keyboard is showing
```

Check the `Example` app for more in-depth on the usage.

### Self-Promotion

Like TRVSKeyboardState? Follow the repository on [GitHub](http://github.com/travisjeffery/trvskeyboardstate). And you're feeling especially charitable or interested in Objective-C, JavaScript, Ruby, and Math, follow [travisjeffery](http://travisjeffery.com) on [Twitter](http://twitter.com/travisjeffery) and [GitHub](http://github.com/travisjeffery). 

### License (MIT) 

Copyright © Travis Jeffery. See LICENSE for details.

