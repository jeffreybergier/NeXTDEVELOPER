/* AppDelegate.m created by me on Mon 09-Apr-2018 */

#import "AppDelegate.h"

@implementation AppDelegate



- (id)init;
{
    self = [super init];
    if (self == nil) { NSLog(@"init failed: exiting!"); exit(1); }

    _documentController = [[OpenDocumentController alloc] init];

    return self;
}

- (void)new:(id)sender;
{
    [_documentController newDocument];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification;
{
    NSLog(@"%@: applicationDidFinishLaunching:", self);
}

- (BOOL)respondsToSelector:(SEL)aSelector;
{
    if (aSelector != NULL) {
        NSLog(@"AppDelegate: RTS: %s", sel_getName(aSelector));
    }
    return [super respondsToSelector:aSelector];
}

@end
