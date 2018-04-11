/* WindowController.m created by me on Wed 11-Apr-2018 */

#import "WindowController.h"

@implementation WindowController

- (id)initWithDelegate:(id)aDelegate;
{
    self = [super init];
    if (self == nil) { NSLog(@"init failed: exiting!"); exit(1); }

    _delegate = aDelegate;

    return self;
}
- (void)windowWillClose:(NSNotification *)notification;
{
    [[self delegate] windowClosedForWindowController:self];
}
- (NSWindow*)window;
{
    return _window;
}
- (void)setWindow:(NSWindow*)newWindow;
{
    [_window release];
    [newWindow retain];
    _window = newWindow;
}
- (id)delegate;
{
    return _delegate;
}
- (void)setDelegate:(id)aDelegate;
{
    _delegate = aDelegate;
}
- (void)dealloc;
{
    [_window setDelegate:nil];
    [_window release];
    [super dealloc];
}

@end
