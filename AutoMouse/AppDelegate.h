//
//  AppDelegate.h
//  AutoMouse
//
//  Created by LinhTY on 11/3/15.
//  Copyright © 2015 EDSS Global. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class ViewController;

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (nonatomic, weak) IBOutlet ViewController*  mainController;

@end

