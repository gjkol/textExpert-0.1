//
//  AppDelegate.m
//  textExpert 0.1
//
//  Created by Aleksei Evseev on 22.11.12.
//  Copyright (c) 2012 Aleksei Evseev. All rights reserved.
//

#import "AppDelegate.h"
#import "TextDelegate.h"
@implementation AppDelegate

-(void) awakeFromNib
{
    NSString *str=@"The NSTextView object provides the view that displays the glyphs, and the NSTextContainer object defines an area within that view where the glyphs are laid out. ";
    
    
    textStorage = [[NSTextStorage alloc] initWithString:str];
    layoutManager = [[NSLayoutManager alloc] init];
    [textStorage addLayoutManager:layoutManager];
    
    textContainer = [[NSTextContainer alloc]
                     initWithContainerSize:NSMakeSize(self.windowView.frame.size.width,10000)];
    [textContainer setHeightTracksTextView:YES];
    [textContainer setWidthTracksTextView:YES];
    
    [layoutManager addTextContainer:textContainer];
    
    
    NSScrollView *sv=[[NSScrollView alloc] initWithFrame:self.windowView.frame];
    
    TextDelegate *td=[[TextDelegate alloc] init];
    
    
    
    
    textView = [[NSTextView alloc]
                initWithFrame:self.windowView.frame
                textContainer:textContainer];
    [textView setImportsGraphics:YES];
    [textView setAllowsImageEditing:YES];
//    [textView setDelegate:td];
//    
    [sv setDocumentView:textView];

    
    [self.window setContentView:sv];
    [self.window makeKeyAndOrderFront:nil];
    [self.window makeFirstResponder:textView];

}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

@end
