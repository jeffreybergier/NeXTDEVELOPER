/* OpenDocumentController.h created by me on Thu 26-Apr-2018 */

#import <AppKit/AppKit.h>
#import "EditContactWindowController.h"

@interface OpenDocumentController : NSObject <WindowControllerDelegate>
{
   NSMutableArray* _openWindows;
}

- (void)newDocument:(id)sender;
- (void)openDocumentAtPath:(NSString*)aPath sender:(id)sender;
- (void)windowDidCloseForWindowController:(id)windowController;
- (EditContactWindowController*)existingWindowControllerForPath:(NSString*)aPath;

@end
