/* WindowController.h created by me on Wed 11-Apr-2018 */

#import <AppKit/AppKit.h>

@protocol WindowControllerDelegate
- (void)windowClosedForWindowController:(id)aWindowController;
@end

@interface WindowController : NSObject
{
    IBOutlet NSWindow* _window;
    id _delegate; // unsafe unretained
}

- (id)initWithDelegate:(id<WindowControllerDelegate>)aDelegate;
- (NSWindow*)window;
- (id)delegate;
- (void)setWindow:(NSWindow*)newWindow;
- (void)setDelegate:(id)aDelegate;

@end