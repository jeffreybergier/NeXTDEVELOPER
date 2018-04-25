/* EditContactWindowController.m created by me on Wed 25-Apr-2018 */

#import "EditContactWindowController.h"

@implementation EditContactWindowController

- (id)initWithFilePath:(NSString*)aPath;
{
    self = [super initWithWindowNibName: @"EditContactWindowController"];
    _filePath = [aPath retain];
    return self;
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
