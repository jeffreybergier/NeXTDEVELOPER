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

- (void)windowWillClose:(NSNotification*)aNotification;
{
    [_delegate windowDidCloseForWindowController:self];
}

- (BOOL)respondsToSelector:(SEL)aSelector;
{
    if (aSelector != NULL) {
        NSLog(@"WC: RTS: %s", sel_getName(aSelector));
    }
    return [super respondsToSelector:aSelector];
}

- (void)dealloc;
{
    NSLog(@"WindowController Dealloc");
    [_window setDelegate:nil];
    [super dealloc];
}

- (id<WindowControllerDelegate>)delegate;
{
    return _delegate;
}
- (void)setDelegate:(id<WindowControllerDelegate>)newDelegate; // unsafe unretained
{
    _delegate = newDelegate;
}
- (void)setWindow:(NSWindow*)newWindow;
{
    _window = newWindow;
}
- (NSWindow*)window;
{
    return _window;
}

@end
