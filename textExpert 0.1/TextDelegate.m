//
//  TextDelegate.m
//  textExpert 0.1
//
//  Created by Aleksei Evseev on 24.11.12.
//  Copyright (c) 2012 Aleksei Evseev. All rights reserved.
//

#import "TextDelegate.h"

@implementation TextDelegate

- (void)textView:(NSTextView *)aTextView clickedOnCell:(id < NSTextAttachmentCell >)cell inRect:(NSRect)cellFrame atIndex:(NSUInteger)charIndex
{
    NSLog(@"ячейка %@",cell);
    NSLog(@"rect %f",cellFrame.size.width);
    NSLog(@"index %lu",charIndex);
    

}

@end
