/* EditContactWindowController.m created by me on Wed 25-Apr-2018 */

#import "EditContactWindowController.h"

@implementation EditContactWindowController

- (id)initWithFilePath:(NSString*)aPath;
{
    _filePath = [aPath retain];
    self = [super initWithWindowNibName: @"EditContactWindowController"];
    return self;
}

- (void)awakeFromNib;
{
    if (_filePath) {
        [[self window] setTitle: _filePath];
    } else {
        [[self window] setTitle: @"New Contact"];
    }
}

- (NSString*)filePath;
{
    return _filePath;
}

- (void)dealloc;
{
    [_filePath release];
    [super dealloc];
}

@end
