/* EditContactWindowController.m created by me on Mon 09-Apr-2018 */

#import "EditContactWindowController.h"

@implementation EditContactWindowController

- (id)initWithDocumentPath:(NSString*)documentPath delegate:(id)aDelegate;
{
    self = [super initWithDelegate:aDelegate];
    if (self == nil) { NSLog(@"init failed: exiting!"); exit(1); }

    _documentPath = documentPath;
    // Must be performed last, after all other config
    // because awakeFromNib is called on self immediately after this line
    if (![NSBundle loadNibNamed:@"EditContactWindowController" owner: self]) { NSLog(@"Failed to load NIB"); exit(1); }
    
    return self;
}

- (BOOL)respondsToSelector:(SEL)aSelector;
{
    if (aSelector != NULL) {
        NSLog(@"EditContactWindowController: RTS: %s", sel_getName(aSelector));
    }
    return [super respondsToSelector:aSelector];
}

- (void)awakeFromNib;
{
    NSLog(@"%@: AwakeFromNib: Window: %@, DocumentPath: %@", self, [self window], [self documentPath]);
}

- (void)dealloc;
{
    NSLog(@"EditContactWindowController: DEALLOC");
    [_documentPath release];
    [super dealloc];
}

// MARK: Housekeeping Getters and Setters

- (NSString*)documentPath;
{
    return _documentPath;
}

@end


/*
@interface NSObject(NSWindowNotifications)
- (void)windowDidResize:(NSNotification *)notification;
- (void)windowDidExpose:(NSNotification *)notification;
#ifndef STRICT_OPENSTEP
- (void)windowWillMove:(NSNotification *)notification;
#endif
- (void)windowDidMove:(NSNotification *)notification;
- (void)windowDidBecomeKey:(NSNotification *)notification;
- (void)windowDidResignKey:(NSNotification *)notification;
- (void)windowDidBecomeMain:(NSNotification *)notification;
- (void)windowDidResignMain:(NSNotification *)notification;
- (void)windowWillClose:(NSNotification *)notification;
#ifndef STRICT_OPENSTEP
- (void)windowWillMiniaturize:(NSNotification *)notification;
#endif
- (void)windowDidMiniaturize:(NSNotification *)notification;
- (void)windowDidDeminiaturize:(NSNotification *)notification;
- (void)windowDidUpdate:(NSNotification *)notification;
- (void)windowDidChangeScreen:(NSNotification *)notification;
@end

@interface NSObject(NSWindowDelegate)
- (BOOL)windowShouldClose:(id)sender;
- (id)windowWillReturnFieldEditor:(NSWindow *)sender toObject:(id)client;
#ifndef STRICT_OPENSTEP
- (NSSize)windowWillResize:(NSWindow *)sender toSize:(NSSize)frameSize;
#endif
@end

APPKIT_EXTERN NSString *NSWindowDidBecomeKeyNotification;
APPKIT_EXTERN NSString *NSWindowDidBecomeMainNotification;
APPKIT_EXTERN NSString *NSWindowDidChangeScreenNotification;
APPKIT_EXTERN NSString *NSWindowDidDeminiaturizeNotification;
APPKIT_EXTERN NSString *NSWindowDidExposeNotification;			// userInfo key:  @"NSExposedRect"
APPKIT_EXTERN NSString *NSWindowDidMiniaturizeNotification;
APPKIT_EXTERN NSString *NSWindowDidMoveNotification;
APPKIT_EXTERN NSString *NSWindowDidResignKeyNotification;
APPKIT_EXTERN NSString *NSWindowDidResignMainNotification;
APPKIT_EXTERN NSString *NSWindowDidResizeNotification;
APPKIT_EXTERN NSString *NSWindowDidUpdateNotification;
APPKIT_EXTERN NSString *NSWindowWillCloseNotification;
#ifndef STRICT_OPENSTEP
APPKIT_EXTERN NSString *NSWindowWillMiniaturizeNotification;
APPKIT_EXTERN NSString *NSWindowWillMoveNotification;
#endif
*/