//
//  ViewController.h
//  AutoMouse
//
//  Created by LinhTY on 11/3/15.
//  Copyright © 2015 EDSS Global. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Carbon/Carbon.h>

@interface ViewController : NSViewController
{
    NSMutableArray*     _eventRecords;

    NSTimeInterval      _previousTimeInterval;
    
    id mouseDownEventMonitor;
    id mouseUpEventMonitor;
    
    BOOL isContinueRun;
    NSInteger iRunCount;
    BOOL _startNextAction;
    
    NSString*           _currentOpenPath;
    NSInteger           _curIndex;
    
    double              _realTimeRunloopStart;
//    double              _realTimeRunloopInterval;
    
    // For Auto Click
    double              _autoClickInterval;
    BOOL                _isAutoClicking;
    
    NSEventModifierFlags    _autoClickModifierFlags;
    unsigned short          _autoClickKeyCode;
    BOOL                _isSettingAutoClickShortcutKey;
}

@property (nonatomic, retain) IBOutlet NSButton* butStartRecord;
@property (nonatomic, retain) IBOutlet NSButton* butStopRecord;
@property (nonatomic, retain) IBOutlet NSButton* butLoadRecord;
@property (nonatomic, retain) IBOutlet NSButton* butSaveRecord;
@property (nonatomic, retain) IBOutlet NSButton* butReplay;
@property (nonatomic, retain) IBOutlet NSButton* butStopPlay;
@property (nonatomic, retain) IBOutlet NSTextField* tfReplayNum;

@property (nonatomic, retain) IBOutlet NSButton* butAutoClick;
@property (nonatomic, retain) IBOutlet NSTextField* tfSecond;
@property (nonatomic, retain) IBOutlet NSTextField* tfMiliSec;


- (IBAction)onStartRecord:(id)sender;
- (IBAction)onStopRecord:(id)sender;
- (IBAction)onSaveRecord:(id)sender;
- (IBAction)onLoadRecord:(id)sender;
- (IBAction)onReplay:(id)sender;
- (IBAction)onStopPlay:(id)sender;

- (IBAction)onAutoClick:(id)sender;



@end

