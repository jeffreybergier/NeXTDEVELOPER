/* WindowController.h created by me on Wed 25-Apr-2018 */

#import <AppKit/AppKit.h>

@protocol WindowControllerDelegate

- (void)windowDidCloseForWindowController:(id)windowController;

@end

@interface WindowController : NSObject
{
    IBOutlet NSWindow* _window;
    id<WindowControllerDelegate> _delegate;
    NSString* _nibName;
}

- (id)initWithWindowNibName:(NSString*)nibName;
- (void)setWindow:(NSWindow*)newWindow; // unsafe unretained
- (void)wakeUpNib; // responsibility of subclass to call this method at end of custom INIT method.
- (NSWindow*)window;
- (id<WindowControllerDelegate>)delegate;
- (void)setDelegate:(id<WindowControllerDelegate>)newDelegate; // unsafe unretained
- (void)showWindow:(id)sender;

@end
