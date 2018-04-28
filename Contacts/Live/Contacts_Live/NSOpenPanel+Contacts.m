/* NSOpenPanel+Contacts.m created by me on Sun 29-Apr-2018 */

#import "NSOpenPanel+Contacts.h"

@implementation NSOpenPanel (Contacts)

+ (NSOpenPanel*)contactsOpenPanel;
{
    NSOpenPanel* panel;
    NSArray* types;
    
    panel = [NSOpenPanel openPanel];
    types = [NSArray arrayWithObjects: @"contact", nil];
    
    [panel setAllowsMultipleSelection: YES];
    [panel runModalForTypes: types];
    
    return panel;
}

@end
