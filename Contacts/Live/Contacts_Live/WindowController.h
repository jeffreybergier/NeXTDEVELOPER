/* WindowController.h created by me on Wed 25-Apr-2018 */

#import <AppKit/AppKit.h>

@interface WindowController : NSObject
{
    IBOutlet NSWindow* _window;
}

- (id)initWithWindowNibName:(NSString*)nibName;
- (void)setWindow:(NSWindow*)newWindow;
- (NSWindow*)window;
- (void)showWindow:(id)sender;

@end
