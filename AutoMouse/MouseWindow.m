//
//  MouseWindow.m
//  AutoMouse
//
//  Created by LinhTY on 11/28/15.
//  Copyright © 2015 EDSS Global. All rights reserved.
//

#import "MouseWindow.h"

@implementation MouseWindow

- (void)sendEvent:(NSEvent *)theEvent
{
//    if ((theEvent.type == NSKeyDown) || (theEvent.type == NSKeyUp))
//    {
//        NSLog(@"%@", theEvent.description);
//    }
    
    [super sendEvent:theEvent];
}

@end
