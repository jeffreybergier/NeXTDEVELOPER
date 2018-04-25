/* AppDelegate.m created by me on Wed 25-Apr-2018 */

#import "AppDelegate.h"
#import "EditContactWindowController.h"

@implementation AppDelegate

-(id)init;
{
    self = [super init];
    // initialization steps here
    NSLog(@"AppDelegate INIT");
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification*) aNotification;
{
    NSLog(@"applicationDidFinishLaunching");
}

-(IBAction)newDocumentWindow:(id) sender;
{
    EditContactWindowController* wc = [[EditContactWindowController alloc] init];
    [wc showWindow: sender];
    [wc release];
}

- (BOOL)respondsToSelector:(SEL)aSelector;
{
    if (aSelector != NULL) {
        NSLog(@"AppDelegate: RTS: %s", sel_getName(aSelector));
    }
    return [super respondsToSelector:aSelector];
}

@end
