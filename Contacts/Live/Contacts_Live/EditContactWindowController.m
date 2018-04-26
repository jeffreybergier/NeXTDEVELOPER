/* EditContactWindowController.m created by me on Wed 25-Apr-2018 */

#import "EditContactWindowController.h"

@implementation EditContactWindowController

- (id)initWithFilePath:(NSString*)aPath;
{
    self = [super initWithWindowNibName: @"EditContactWindowController"];
    _filePath = [aPath retain];
    [self wakeUpNib];
    return self;
}

- (void)awakeFromNib;
{
    [[self window] setTitle: _filePath];
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
