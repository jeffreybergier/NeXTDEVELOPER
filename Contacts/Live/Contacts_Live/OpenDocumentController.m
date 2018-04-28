/* OpenDocumentController.m created by me on Thu 26-Apr-2018 */

#import "OpenDocumentController.h"
#import "EditContactWindowController.h"

@implementation OpenDocumentController

- (id)init;
{
    self = [super init];
    _openWindows = [[NSMutableArray alloc] init];
    return self;
}

- (void)newDocument:(id)sender;
{
    [self openDocumentAtPath:nil sender:sender];
}

- (void)openDocumentAtPath:(NSString*)aPath sender:(id)sender;
{
    EditContactWindowController* wc = [self existingWindowControllerForPath:aPath];
    if (wc) {
        [wc showWindow:sender];
    } else {
        EditContactWindowController* wc = [[EditContactWindowController alloc] initWithFilePath:aPath];
        [wc setDelegate:self];
        [wc showWindow:sender];
        [_openWindows addObject:wc];
        [wc release]; 
    }
}

- (EditContactWindowController*)existingWindowControllerForPath:(NSString*)aPath;
{
    NSEnumerator* enumerator;
    EditContactWindowController* enumeratedWC;
    
    if (!aPath || [_openWindows count] <= 0) {
        return nil;
    }
    enumerator = [_openWindows objectEnumerator];
    while ((enumeratedWC = [enumerator nextObject])) {
        NSString* openPath = [enumeratedWC filePath];
        if ([aPath isEqualToString: openPath]) {
            return enumeratedWC;
        }
    }
    return nil;
}

- (void)windowDidCloseForWindowController:(id)windowController;
{
    unsigned idx = [_openWindows indexOfObject:windowController];
    [_openWindows removeObjectAtIndex:idx];
}

- (void)dealloc;
{
    [_openWindows release];
    [super dealloc];
}

@end
