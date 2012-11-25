//
//  AppDelegate.h
//  textExpert 0.1
//
//  Created by Aleksei Evseev on 22.11.12.
//  Copyright (c) 2012 Aleksei Evseev. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    
    NSTextStorage     *textStorage;
    NSLayoutManager *layoutManager;
    NSTextContainer *textContainer;
    NSTextView *textView;
    
    
    
}
@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSView *windowView;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;









@end
