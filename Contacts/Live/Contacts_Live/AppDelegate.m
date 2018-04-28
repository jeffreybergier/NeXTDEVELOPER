/* AppDelegate.m created by me on Wed 25-Apr-2018 */

#import "AppDelegate.h"
#import "EditContactWindowController.h"
#import "NSOpenPanel+Contacts.h"

@implementation AppDelegate

-(id)init;
{
    self = [super init];
    _openDocumentController = [[OpenDocumentController alloc] init];
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification*) aNotification;
{
    NSLog(@"applicationDidFinishLaunching");
}

- (IBAction)openExistingDocument:(id) sender;
{
    NSEnumerator* enumerator;
    NSOpenPanel* panel;
    NSString* enumeratedPath;
    panel = [NSOpenPanel contactsOpenPanel];
    enumerator = [[panel filenames] objectEnumerator];
    while ((enumeratedPath = [enumerator nextObject])) {
        [_openDocumentController openDocumentAtPath:enumeratedPath sender: sender];
    }
}

- (IBAction)newDocumentWindow:(id) sender;
{
    [_openDocumentController newDocument:sender];
}

/*
- (BOOL)respondsToSelector:(SEL)aSelector;
{
    if (aSelector != NULL) {
        NSLog(@"AppDelegate: RTS: %s", sel_getName(aSelector));
    }
    return [super respondsToSelector:aSelector];
}
*/

-(void)dealloc;
{
    NSLog(@"AppDelegate DEALLOC");
    [_openDocumentController release];
    [super dealloc];
}

@end







