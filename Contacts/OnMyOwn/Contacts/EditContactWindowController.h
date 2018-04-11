/* EditContactWindowController.h created by me on Mon 09-Apr-2018 */

#import <AppKit/AppKit.h>
#import <WindowController.h>

@interface EditContactWindowController : WindowController
{
    NSString* _documentPath;
}

- (id)initWithDocumentPath:(NSString*)documentPath delegate:(id)aDelegate;
- (NSString*)documentPath;

@end
