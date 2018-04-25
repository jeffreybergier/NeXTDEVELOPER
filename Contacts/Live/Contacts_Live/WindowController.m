/* WindowController.m created by me on Wed 25-Apr-2018 */

#import "WindowController.h"

@implementation WindowController

- (id)initWithWindowNibName:(NSString*)nibName;
{
    self = [super init];
    [NSBundle loadNibNamed:nibName owner: self];
    return self;
}

- (void)showWindow:(id)sender;
{
   [[self window] makeKeyAndOrderFront: sender];
}

- (void)dealloc;
{
    [_window release];
    [super dealloc];
}

- (void)setWindow:(NSWindow*)newWindow;
{
    NSWindow* oldWindow = _window;
    _window = newWindow;
    [oldWindow release];
}
- (NSWindow*)window;
{
    return _window;
}

@end
