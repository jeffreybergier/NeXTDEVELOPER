/* AppDelegate.h created by me on Wed 25-Apr-2018 */

#import <AppKit/AppKit.h>
#import <OpenDocumentController.h>

@interface AppDelegate : NSObject
{
    OpenDocumentController* _openDocumentController;
}

-(IBAction)newDocumentWindow:(id) sender;

@end
