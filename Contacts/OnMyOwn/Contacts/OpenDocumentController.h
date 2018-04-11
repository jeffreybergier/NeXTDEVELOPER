/* OpenDocumentController.h created by me on Tue 10-Apr-2018 */

#import <AppKit/AppKit.h>
#import <EditContactWindowController.h>

@interface OpenDocumentController : NSObject
{
    NSMutableArray* _openWindows;
}

- (void)newDocument;
- (void)existingDocumentAtPath:(NSString*)aPath;
- (void)windowClosedForWindowController:(EditContactWindowController*)aWindowController;

@end
