/* EditContactWindowController.h created by me on Wed 25-Apr-2018 */

#import <AppKit/AppKit.h>
#import <WindowController.h>

@interface EditContactWindowController : WindowController
{
    NSString* _filePath;
}

- (id)initWithFilePath:(NSString*)aPath;
- (NSString*)filePath;

@end
