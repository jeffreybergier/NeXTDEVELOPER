/* OpenDocumentController.m created by me on Tue 10-Apr-2018 */

#import "OpenDocumentController.h"
#import "EditContactWindowController.h"

@implementation OpenDocumentController

- (id)init;
{
    self = [super init];
    if (self == nil) { NSLog(@"init failed: exiting!"); exit(1); }
    
    _openWindows = [[NSMutableArray alloc] init];
    
    return self;
}

- (void)newDocument;
{
    [self existingDocumentAtPath:nil];
}

- (void)existingDocumentAtPath:(NSString*)aPath;
{
    [_openWindows addObject: [[EditContactWindowController alloc] initWithDocumentPath:aPath delegate:self]];
}

- (void)windowClosedForWindowController:(WindowController*)aWindowController;
{
    unsigned index = -1;
    id wc = nil;
    
    index = [_openWindows indexOfObject: aWindowController];
    if (index < 0) { NSLog(@"object not found"); exit(1); }
    
    wc = [_openWindows objectAtIndex: index];
    [_openWindows removeObjectAtIndex: index];
    NSLog(@"Closing WC: %@", wc);
    [wc release];
}

@end
