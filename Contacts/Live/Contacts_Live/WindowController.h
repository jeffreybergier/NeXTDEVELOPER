/* WindowController.h created by me on Wed 25-Apr-2018 */

#import <AppKit/AppKit.h>

@protocol WindowControllerDelegate

- (void)windowDidCloseForWindowController:(id)windowController;

@end

@interface WindowController : NSObject
{
    IBOutlet NSWindow* _window;
    id<WindowControllerDelegate> _delegate;
}

// awakeFromNib called when calling superclass init.
// be sure to set instance variables before calling super
- (id)initWithWindowNibName:(NSString*)nibName;
- (void)setWindow:(NSWindow*)newWindow; // unsafe unretained
- (NSWindow*)window;
- (id<WindowControllerDelegate>)delegate;
- (void)setDelegate:(id<WindowControllerDelegate>)newDelegate; // unsafe unretained
- (void)showWindow:(id)sender;

@end
