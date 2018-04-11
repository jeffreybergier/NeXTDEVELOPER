/* AppDelegate.h created by me on Mon 09-Apr-2018 */

#import <AppKit/AppKit.h>
#import <OpenDocumentController.h>

@interface AppDelegate : NSObject
{
    OpenDocumentController* _documentController;
}

- (IBAction)new:(id)sender;

@end
