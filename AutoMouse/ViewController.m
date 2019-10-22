//
//  ViewController.m
//  AutoMouse
//
//  Created by LinhTY on 11/3/15.
//  Copyright © 2015 EDSS Global. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "TPPreciseTimer.h"


enum
{
    None = 0,
    //
    // Summary:
    //     The left mouse button.
    LButton = 1,
    //
    // Summary:
    //     The right mouse button.
    RButton = 2,
    //
    // Summary:
    //     The CANCEL key.
    Cancel = 3,
    //
    // Summary:
    //     The middle mouse button (three-button mouse).
    MButton = 4,
    //
    // Summary:
    //     The first x mouse button (five-button mouse).
    XButton1 = 5,
    //
    // Summary:
    //     The second x mouse button (five-button mouse).
    XButton2 = 6,
    //
    // Summary:
    //     The BACKSPACE key.
    Back = 8,
    //
    // Summary:
    //     The TAB key.
    Tab = 9,
    //
    // Summary:
    //     The LINEFEED key.
    LineFeed = 10,
    //
    // Summary:
    //     The CLEAR key.
    Clear = 12,
    //
    // Summary:
    //     The ENTER key.
    Enter = 13,
    //
    // Summary:
    //     The RETURN key.
    Return = 13,
    //
    // Summary:
    //     The SHIFT key.
    ShiftKey = 16,
    //
    // Summary:
    //     The CTRL key.
    ControlKey = 17,
    //
    // Summary:
    //     The ALT key.
    Menu = 18,
    //
    // Summary:
    //     The PAUSE key.
    Pause = 19,
    //
    // Summary:
    //     The CAPS LOCK key.
    CapsLock = 20,
    //
    // Summary:
    //     The CAPS LOCK key.
    Capital = 20,
    //
    // Summary:
    //     The IME Kana mode key.
    KanaMode = 21,
    //
    // Summary:
    //     The IME Hanguel mode key. (maintained for compatibility; use HangulMode)
    HanguelMode = 21,
    //
    // Summary:
    //     The IME Hangul mode key.
    HangulMode = 21,
    //
    // Summary:
    //     The IME Junja mode key.
    JunjaMode = 23,
    //
    // Summary:
    //     The IME final mode key.
    FinalMode = 24,
    //
    // Summary:
    //     The IME Kanji mode key.
    KanjiMode = 25,
    //
    // Summary:
    //     The IME Hanja mode key.
    HanjaMode = 25,
    //
    // Summary:
    //     The ESC key.
    Escape = 27,
    //
    // Summary:
    //     The IME convert key.
    IMEConvert = 28,
    //
    // Summary:
    //     The IME nonconvert key.
    IMENonconvert = 29,
    //
    // Summary:
    //     The IME accept key. Obsolete, use System.Windows.Forms.Keys.IMEAccept instead.
    IMEAceept = 30,
    //
    // Summary:
    //     The IME accept key, replaces System.Windows.Forms.Keys.IMEAceept.
    IMEAccept = 30,
    //
    // Summary:
    //     The IME mode change key.
    IMEModeChange = 31,
    //
    // Summary:
    //     The SPACEBAR key.
    Space = 32,
    //
    // Summary:
    //     The PAGE UP key.
    Prior = 33,
    //
    // Summary:
    //     The PAGE UP key.
    PageUp = 33,
    //
    // Summary:
    //     The PAGE DOWN key.
    Next = 34,
    //
    // Summary:
    //     The PAGE DOWN key.
    PageDown = 34,
    //
    // Summary:
    //     The END key.
    End = 35,
    //
    // Summary:
    //     The HOME key.
    Home = 36,
    //
    // Summary:
    //     The LEFT ARROW key.
    Left = 37,
    //
    // Summary:
    //     The UP ARROW key.
    Up = 38,
    //
    // Summary:
    //     The RIGHT ARROW key.
    Right = 39,
    //
    // Summary:
    //     The DOWN ARROW key.
    Down = 40,
    //
    // Summary:
    //     The SELECT key.
    Select = 41,
    //
    // Summary:
    //     The PRINT key.
    Print = 42,
    //
    // Summary:
    //     The EXECUTE key.
    Execute = 43,
    //
    // Summary:
    //     The PRINT SCREEN key.
    PrintScreen = 44,
    //
    // Summary:
    //     The PRINT SCREEN key.
    Snapshot = 44,
    //
    // Summary:
    //     The INS key.
    Insert = 45,
    //
    // Summary:
    //     The DEL key.
    Delete = 46,
    //
    // Summary:
    //     The HELP key.
    Help = 47,
    //
    // Summary:
    //     The 0 key.
    D0 = 48,
    //
    // Summary:
    //     The 1 key.
    D1 = 49,
    //
    // Summary:
    //     The 2 key.
    D2 = 50,
    //
    // Summary:
    //     The 3 key.
    D3 = 51,
    //
    // Summary:
    //     The 4 key.
    D4 = 52,
    //
    // Summary:
    //     The 5 key.
    D5 = 53,
    //
    // Summary:
    //     The 6 key.
    D6 = 54,
    //
    // Summary:
    //     The 7 key.
    D7 = 55,
    //
    // Summary:
    //     The 8 key.
    D8 = 56,
    //
    // Summary:
    //     The 9 key.
    D9 = 57,
    //
    // Summary:
    //     The A key.
    A = 65,
    //
    // Summary:
    //     The B key.
    B = 66,
    //
    // Summary:
    //     The C key.
    C = 67,
    //
    // Summary:
    //     The D key.
    D = 68,
    //
    // Summary:
    //     The E key.
    E = 69,
    //
    // Summary:
    //     The F key.
    F = 70,
    //
    // Summary:
    //     The G key.
    G = 71,
    //
    // Summary:
    //     The H key.
    H = 72,
    //
    // Summary:
    //     The I key.
    I = 73,
    //
    // Summary:
    //     The J key.
    J = 74,
    //
    // Summary:
    //     The K key.
    K = 75,
    //
    // Summary:
    //     The L key.
    L = 76,
    //
    // Summary:
    //     The M key.
    M = 77,
    //
    // Summary:
    //     The N key.
    N = 78,
    //
    // Summary:
    //     The O key.
    O = 79,
    //
    // Summary:
    //     The P key.
    P = 80,
    //
    // Summary:
    //     The Q key.
    Q = 81,
    //
    // Summary:
    //     The R key.
    R = 82,
    //
    // Summary:
    //     The S key.
    S = 83,
    //
    // Summary:
    //     The T key.
    T = 84,
    //
    // Summary:
    //     The U key.
    U = 85,
    //
    // Summary:
    //     The V key.
    V = 86,
    //
    // Summary:
    //     The W key.
    W = 87,
    //
    // Summary:
    //     The X key.
    X = 88,
    //
    // Summary:
    //     The Y key.
    Y = 89,
    //
    // Summary:
    //     The Z key.
    Z = 90,
    //
    // Summary:
    //     The left Windows logo key (Microsoft Natural Keyboard).
    LWin = 91,
    //
    // Summary:
    //     The right Windows logo key (Microsoft Natural Keyboard).
    RWin = 92,
    //
    // Summary:
    //     The application key (Microsoft Natural Keyboard).
    Apps = 93,
    //
    // Summary:
    //     The computer sleep key.
    Sleep = 95,
    //
    // Summary:
    //     The 0 key on the numeric keypad.
    NumPad0 = 96,
    //
    // Summary:
    //     The 1 key on the numeric keypad.
    NumPad1 = 97,
    //
    // Summary:
    //     The 2 key on the numeric keypad.
    NumPad2 = 98,
    //
    // Summary:
    //     The 3 key on the numeric keypad.
    NumPad3 = 99,
    //
    // Summary:
    //     The 4 key on the numeric keypad.
    NumPad4 = 100,
    //
    // Summary:
    //     The 5 key on the numeric keypad.
    NumPad5 = 101,
    //
    // Summary:
    //     The 6 key on the numeric keypad.
    NumPad6 = 102,
    //
    // Summary:
    //     The 7 key on the numeric keypad.
    NumPad7 = 103,
    //
    // Summary:
    //     The 8 key on the numeric keypad.
    NumPad8 = 104,
    //
    // Summary:
    //     The 9 key on the numeric keypad.
    NumPad9 = 105,
    //
    // Summary:
    //     The multiply key.
    Multiply = 106,
    //
    // Summary:
    //     The add key.
    Add = 107,
    //
    // Summary:
    //     The separator key.
    Separator = 108,
    //
    // Summary:
    //     The subtract key.
    Subtract = 109,
    //
    // Summary:
    //     The decimal key.
    Decimal = 110,
    //
    // Summary:
    //     The divide key.
    Divide = 111,
    //
    // Summary:
    //     The F1 key.
    F1 = 112,
    //
    // Summary:
    //     The F2 key.
    F2 = 113,
    //
    // Summary:
    //     The F3 key.
    F3 = 114,
    //
    // Summary:
    //     The F4 key.
    F4 = 115,
    //
    // Summary:
    //     The F5 key.
    F5 = 116,
    //
    // Summary:
    //     The F6 key.
    F6 = 117,
    //
    // Summary:
    //     The F7 key.
    F7 = 118,
    //
    // Summary:
    //     The F8 key.
    F8 = 119,
    //
    // Summary:
    //     The F9 key.
    F9 = 120,
    //
    // Summary:
    //     The F10 key.
    F10 = 121,
    //
    // Summary:
    //     The F11 key.
    F11 = 122,
    //
    // Summary:
    //     The F12 key.
    F12 = 123,
    //
    // Summary:
    //     The F13 key.
    F13 = 124,
    //
    // Summary:
    //     The F14 key.
    F14 = 125,
    //
    // Summary:
    //     The F15 key.
    F15 = 126,
    //
    // Summary:
    //     The F16 key.
    F16 = 127,
    //
    // Summary:
    //     The F17 key.
    F17 = 128,
    //
    // Summary:
    //     The F18 key.
    F18 = 129,
    //
    // Summary:
    //     The F19 key.
    F19 = 130,
    //
    // Summary:
    //     The F20 key.
    F20 = 131,
    //
    // Summary:
    //     The F21 key.
    F21 = 132,
    //
    // Summary:
    //     The F22 key.
    F22 = 133,
    //
    // Summary:
    //     The F23 key.
    F23 = 134,
    //
    // Summary:
    //     The F24 key.
    F24 = 135,
    //
    // Summary:
    //     The NUM LOCK key.
    NumLock = 144,
    //
    // Summary:
    //     The SCROLL LOCK key.
    Scroll = 145,
    //
    // Summary:
    //     The left SHIFT key.
    LShiftKey = 160,
    //
    // Summary:
    //     The right SHIFT key.
    RShiftKey = 161,
    //
    // Summary:
    //     The left CTRL key.
    LControlKey = 162,
    //
    // Summary:
    //     The right CTRL key.
    RControlKey = 163,
    //
    // Summary:
    //     The left ALT key.
    LMenu = 164,
    //
    // Summary:
    //     The right ALT key.
    RMenu = 165,
    //
    // Summary:
    //     The browser back key (Windows 2000 or later).
    BrowserBack = 166,
    //
    // Summary:
    //     The browser forward key (Windows 2000 or later).
    BrowserForward = 167,
    //
    // Summary:
    //     The browser refresh key (Windows 2000 or later).
    BrowserRefresh = 168,
    //
    // Summary:
    //     The browser stop key (Windows 2000 or later).
    BrowserStop = 169,
    //
    // Summary:
    //     The browser search key (Windows 2000 or later).
    BrowserSearch = 170,
    //
    // Summary:
    //     The browser favorites key (Windows 2000 or later).
    BrowserFavorites = 171,
    //
    // Summary:
    //     The browser home key (Windows 2000 or later).
    BrowserHome = 172,
    //
    // Summary:
    //     The volume mute key (Windows 2000 or later).
    VolumeMute = 173,
    //
    // Summary:
    //     The volume down key (Windows 2000 or later).
    VolumeDown = 174,
    //
    // Summary:
    //     The volume up key (Windows 2000 or later).
    VolumeUp = 175,
    //
    // Summary:
    //     The media next track key (Windows 2000 or later).
    MediaNextTrack = 176,
    //
    // Summary:
    //     The media previous track key (Windows 2000 or later).
    MediaPreviousTrack = 177,
    //
    // Summary:
    //     The media Stop key (Windows 2000 or later).
    MediaStop = 178,
    //
    // Summary:
    //     The media play pause key (Windows 2000 or later).
    MediaPlayPause = 179,
    //
    // Summary:
    //     The launch mail key (Windows 2000 or later).
    LaunchMail = 180,
    //
    // Summary:
    //     The select media key (Windows 2000 or later).
    SelectMedia = 181,
    //
    // Summary:
    //     The start application one key (Windows 2000 or later).
    LaunchApplication1 = 182,
    //
    // Summary:
    //     The start application two key (Windows 2000 or later).
    LaunchApplication2 = 183,
    //
    // Summary:
    //     The OEM 1 key.
    Oem1 = 186,
    //
    // Summary:
    //     The OEM Semicolon key on a US standard keyboard (Windows 2000 or later).
    OemSemicolon = 186,
    //
    // Summary:
    //     The OEM plus key on any country/region keyboard (Windows 2000 or later).
    Oemplus = 187,
    //
    // Summary:
    //     The OEM comma key on any country/region keyboard (Windows 2000 or later).
    Oemcomma = 188,
    //
    // Summary:
    //     The OEM minus key on any country/region keyboard (Windows 2000 or later).
    OemMinus = 189,
    //
    // Summary:
    //     The OEM period key on any country/region keyboard (Windows 2000 or later).
    OemPeriod = 190,
    //
    // Summary:
    //     The OEM question mark key on a US standard keyboard (Windows 2000 or later).
    OemQuestion = 191,
    //
    // Summary:
    //     The OEM 2 key.
    Oem2 = 191,
    //
    // Summary:
    //     The OEM tilde key on a US standard keyboard (Windows 2000 or later).
    Oemtilde = 192,
    //
    // Summary:
    //     The OEM 3 key.
    Oem3 = 192,
    //
    // Summary:
    //     The OEM 4 key.
    Oem4 = 219,
    //
    // Summary:
    //     The OEM open bracket key on a US standard keyboard (Windows 2000 or later).
    OemOpenBrackets = 219,
    //
    // Summary:
    //     The OEM pipe key on a US standard keyboard (Windows 2000 or later).
    OemPipe = 220,
    //
    // Summary:
    //     The OEM 5 key.
    Oem5 = 220,
    //
    // Summary:
    //     The OEM 6 key.
    Oem6 = 221,
    //
    // Summary:
    //     The OEM close bracket key on a US standard keyboard (Windows 2000 or later).
    OemCloseBrackets = 221,
    //
    // Summary:
    //     The OEM 7 key.
    Oem7 = 222,
    //
    // Summary:
    //     The OEM singled/double quote key on a US standard keyboard (Windows 2000
    //     or later).
    OemQuotes = 222,
    //
    // Summary:
    //     The OEM 8 key.
    Oem8 = 223,
    //
    // Summary:
    //     The OEM 102 key.
    Oem102 = 226,
    //
    // Summary:
    //     The OEM angle bracket or backslash key on the RT 102 key keyboard (Windows
    //     2000 or later).
    OemBackslash = 226,
    //
    // Summary:
    //     The PROCESS KEY key.
    ProcessKey = 229,
    //
    // Summary:
    //     Used to pass Unicode characters as if they were keystrokes. The Packet key
    //     value is the low word of a 32-bit virtual-key value used for non-keyboard
    //     input methods.
    Packet = 231,
    //
    // Summary:
    //     The ATTN key.
    Attn = 246,
    //
    // Summary:
    //     The CRSEL key.
    Crsel = 247,
    //
    // Summary:
    //     The EXSEL key.
    Exsel = 248,
    //
    // Summary:
    //     The ERASE EOF key.
    EraseEof = 249,
    //
    // Summary:
    //     The PLAY key.
    Play = 250,
    //
    // Summary:
    //     The ZOOM key.
    Zoom = 251,
    //
    // Summary:
    //     A constant reserved for future use.
    NoName = 252,
    //
    // Summary:
    //     The PA1 key.
    Pa1 = 253,
    //
    // Summary:
    //     The CLEAR key.
    OemClear = 254
};

enum {
    kOpCodeControlNone = 0,
    kOpCodeControlMouseLeftDown,
    kOpCodeControlMouseLeftUp,
    kOpCodeControlMouseRightDown,
    kOpCodeControlMouseRightUp,
    kOpCodeControlMouseMidDown,
    kOpCodeControlMouseMidUp,
    kOpCodeControlMouseLeftDrag,
    kOpCodeControlMouseRightDrag,
    kOpCodeControlMouseWheel,
    kOpCodeControlMouseLeftDoubleClick,
    kOpCodeControlMouseRightDoubleClick,
    kOpCodeControlKeyboard,
    kOpCodeControlMouseMoved,
    kOpCodeControlMouseMidDrag,
    kOpCodeControlMouseMidDoubleClick,
    kOpCodeControlConnected = 97,
    kOpCodeControlKeyFrame = 98,
    kOpCodeControlFrameRate = 99,
    kOpCodeFocusedTextBounds = 100,
    kOpCodeConnectInformation = 110,
    kOpCodeControllable = 111,
    kOpCodeControlPing = 112,
    kOpCodeDisconnect = 120,
    kOpCodeDisconnectConfirm = 121,
    kOpCodeNotAvailable = 122
    
};



#define kEventType          @"EventType"
#define kMouseLocation      @"MouseLocation"
#define kInterval           @"Interval"

#define kAllowFileTypes     @[@"mt"]
#define kLastSaveDir       @"LastSavePath"


#define kMouseUpDownInterval    0.0005

#define kAutoClickShortcutDefaultKey   @"AutoClickShortcutDefaultKey"
#define kAutoClickShortcutDefaultModFlag   @"AutoClickShortcutDefaultModFlag"


// *** Get even by CG code
CGEventRef myCGEventCallback(CGEventTapProxy proxy, CGEventType type, CGEventRef event, void *refcon) {
    //0x0b is the virtual keycode for "b"
    //0x09 is the virtual keycode for "v"
    int64_t keyCode = CGEventGetIntegerValueField(event, kCGKeyboardEventKeycode);
    if (keyCode)
    {
        NSLog(@"%X, Type %X", (unsigned int)keyCode, (unsigned int)CGEventGetIntegerValueField(event, kCGKeyboardEventKeyboardType));
//    if (CGEventGetIntegerValueField(event, kCGKeyboardEventKeycode) == 0x0B) {
//        CGEventSetIntegerValueField(event, kCGKeyboardEventKeycode, 0x09);
//    }
    }
    
    return event;
}

OSStatus myHotKeyHandler(EventHandlerCallRef nextHandler, EventRef anEvent, void *userData);

EventHotKeyRef myHotKeyRef;
EventHotKeyID myHotKeyID;
EventTypeSpec eventType;

OSStatus myHotKeyHandler(EventHandlerCallRef nextHandler, EventRef anEvent, void *userData)
{
    ViewController* rootController = (__bridge ViewController*)userData;
    [rootController onAutoClick:rootController.butAutoClick];
    
    //     EventHotKeyID hkRef;
    //    GetEventParameter(anEvent, kEventParamDirectObject, typeEventHotKeyID, NULL, sizeof(hkRef), NULL, &hkRef);
    //    switch (hkRef.id)
    //    {
    //        case 1:
    //            NSLog(@"Event 1 was triggered!");
    //            break;
    //
    //        case 2:
    //            NSLog(@"Event 2 was triggered!");
    //            break;
    //    }
    
    return noErr;
}

@interface ViewController ()
+ (uint16_t) convertFromKeyMacToCommonKey: (CGKeyCode) keyCode;
+ (CGPoint)carbonScreenPointFromCocoaScreenPoint:(NSPoint)cocoaPoint;


@end


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.window.title = @"Auto Mouse Click";
    
    _eventRecords = [NSMutableArray array];
    _currentOpenPath = nil;
    
    mouseDownEventMonitor = nil;
    mouseUpEventMonitor = nil;
    
    isContinueRun = false;
    
    [self.tfReplayNum setStringValue:@"0"];
    
    [self.tfSecond setStringValue:@"10"];
    [self.tfMiliSec setStringValue:@"0"];
    
    _isAutoClicking = NO;
    _autoClickInterval = 0.0;
    // Do any additional setup after loading the view.
    // ***** TEst global mouse event received ****
    // Insert code here to initialize your application
    
    _isSettingAutoClickShortcutKey = NO;
    NSUserDefaults* userDefault = [NSUserDefaults standardUserDefaults];
    if ([userDefault objectForKey:kAutoClickShortcutDefaultModFlag])
    {
        _autoClickModifierFlags = [[userDefault objectForKey:kAutoClickShortcutDefaultModFlag] unsignedIntegerValue];
        _autoClickKeyCode = [[userDefault objectForKey:kAutoClickShortcutDefaultKey] unsignedShortValue];
    }
    else
    {
        _autoClickModifierFlags = NSAlternateKeyMask | NSCommandKeyMask;    //0;
        _autoClickKeyCode = kVK_ANSI_E;     // 0;
    }
    
    eventType.eventClass = kEventClassKeyboard;
    eventType.eventKind = kEventHotKeyPressed;
    InstallApplicationEventHandler(&myHotKeyHandler, 1, &eventType, (__bridge void*)self, NULL);
    
    myHotKeyID.signature = 'amc1';
    myHotKeyID.id = 1;
    RegisterEventHotKey(kVK_ANSI_E, cmdKey+optionKey, myHotKeyID, GetApplicationEventTarget(), 0, &myHotKeyRef);
    
}

- (void)dealloc
{
    UnregisterEventHotKey(myHotKeyRef);
    
    [_eventRecords removeAllObjects];
    _eventRecords = nil;
    
}

- (void)viewDidAppear
{
    [super viewDidAppear];
    //[NSThread detachNewThreadSelector:@selector(threadKeyTap) toTarget:self withObject:nil];
}

// Non-use function, keep for sample *****
- (void) threadKeyTap
{
    @autoreleasepool {
        CFRunLoopSourceRef runLoopSource;
        
        //CFMachPortRef eventTap = CGEventTapCreate(kCGHIDEventTap, kCGHeadInsertEventTap, kCGEventTapOptionDefault, kCGEventMaskForAllEvents, myCGEventCallback, NULL);
        CGEventMask emask = kCGEventMaskForAllEvents;   //CGEventMaskBit(kCGEventKeyDown | kCGEventKeyUp);
        CFMachPortRef eventTap = CGEventTapCreate(kCGHIDEventTap, kCGHeadInsertEventTap, kCGEventTapOptionListenOnly, emask, myCGEventCallback, NULL);
        
        if (!eventTap) {
            NSLog(@"Couldn't create event tap!");
            return;
        }
        
        runLoopSource = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, eventTap, 0);
        
        CFRunLoopAddSource(CFRunLoopGetCurrent(), runLoopSource, kCFRunLoopCommonModes);
        
        CGEventTapEnable(eventTap, true);
        
        CFRunLoopRun();
        
        CFRelease(eventTap);
        CFRelease(runLoopSource);

    }
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    
    // Update the view, if already loaded.
}

- (void) disableUI
{
    self.butStartRecord.enabled = NO;
    self.butStopRecord.enabled = NO;
    self.butLoadRecord.enabled = NO;
    self.butSaveRecord.enabled = NO;
    self.butReplay.enabled = NO;
    self.tfReplayNum.enabled = NO;
    self.butAutoClick.enabled = NO;
    self.tfSecond.enabled = NO;
    self.tfMiliSec.enabled = NO;
}

- (void) enableUI
{
    self.butStartRecord.enabled = YES;
    self.butStopRecord.enabled = YES;
    self.butLoadRecord.enabled = YES;
    self.butSaveRecord.enabled = YES;
    self.butReplay.enabled = YES;
    self.tfReplayNum.enabled = YES;
    self.butAutoClick.enabled = YES;
    self.tfSecond.enabled = YES;
    self.tfMiliSec.enabled = YES;
}

- (IBAction)onStartRecord:(id)sender
{
//    NSButton* sendBut = (NSButton*)sender;
//    if (mouseDownEventMonitor)
//    {
//        sendBut.enabled = NO;
    [self disableUI];
    self.butStopRecord.enabled = YES;
    
        [_eventRecords removeAllObjects];
        _previousTimeInterval = [[NSDate date] timeIntervalSince1970];        
        
        
        //    [NSEvent addGlobalMonitorForEventsMatchingMask:NSMouseMovedMask handler:^(NSEvent* event)
        //     {
        //         NSPoint location = [NSEvent mouseLocation];
        //
        //         NSDictionary* dict = [NSDictionary dictionaryWithObjects: location,  forKeys:<#(nonnull NSArray<id<NSCopying>> *)#>]
        //         NSLog(@"Mouse move to %@", NSStringFromPoint(location));
        //     }];
        
        mouseDownEventMonitor = [NSEvent addGlobalMonitorForEventsMatchingMask:NSLeftMouseDownMask handler:^(NSEvent* event)
                                 {
                                     NSPoint location = [NSEvent mouseLocation];
                                     NSString* strLocation = NSStringFromPoint(location);
                                     NSTimeInterval newInterval = [[NSDate date] timeIntervalSince1970];
                                     double timeInterval = newInterval  - self->_previousTimeInterval;
                                     
                                     NSDictionary* dict = [NSDictionary dictionaryWithObjectsAndKeys:strLocation, kMouseLocation, [NSNumber numberWithDouble:timeInterval], kInterval, [NSNumber numberWithInt:kOpCodeControlMouseLeftDown], kEventType, nil];
                                     [self->_eventRecords addObject:dict];
                                     
                                     self->_previousTimeInterval = newInterval;
                                     
                                     NSLog(@"Mouse down at %@", NSStringFromPoint(location));
                                 }];
        
        mouseUpEventMonitor = [NSEvent addGlobalMonitorForEventsMatchingMask:NSLeftMouseUpMask handler:^(NSEvent* event)
                               {
                                   NSPoint location = [NSEvent mouseLocation];
                                   NSString* strLocation = NSStringFromPoint(location);
                                   NSTimeInterval newInterval = [[NSDate date] timeIntervalSince1970];
                                   double timeInterval = newInterval - self->_previousTimeInterval;
                                   
                                   NSDictionary* dict = [NSDictionary dictionaryWithObjectsAndKeys:strLocation, kMouseLocation, [NSNumber numberWithDouble:timeInterval], kInterval, [NSNumber numberWithInt:kOpCodeControlMouseLeftUp], kEventType, nil];
                                   [self->_eventRecords addObject:dict];
                                   
                                   self->_previousTimeInterval = newInterval;
                                   
                                   NSLog(@"Mouse up at %@", NSStringFromPoint(location));
                               }];
        
//        sendBut.enabled = YES;
//    }
//    else    // Stop Record
//    {
//        [NSEvent removeMonitor:mouseDownEventMonitor];
//        mouseDownEventMonitor = nil;
//        [NSEvent removeMonitor:mouseUpEventMonitor];
//        mouseUpEventMonitor = nil;
//    }
}

- (IBAction)onStopRecord:(id)sender
{
    NSLog(@"Stop Record");
    
    //Add a mouse moving to current location
    NSPoint location = [NSEvent mouseLocation];
    NSString* strLocation = NSStringFromPoint(location);
    NSTimeInterval newInterval = [[NSDate date] timeIntervalSince1970];
    double timeInterval = newInterval - _previousTimeInterval;
    
    NSDictionary* dict = [NSDictionary dictionaryWithObjectsAndKeys:strLocation, kMouseLocation, [NSNumber numberWithDouble:timeInterval], kInterval, [NSNumber numberWithInt:kOpCodeControlMouseMoved], kEventType, nil];
    [_eventRecords addObject:dict];
    
    [NSEvent removeMonitor:mouseDownEventMonitor];
    mouseDownEventMonitor = nil;
    [NSEvent removeMonitor:mouseUpEventMonitor];
    mouseUpEventMonitor = nil;
    
    [self enableUI];
}

- (IBAction)onLoadRecord:(id)sender
{
    NSOpenPanel* openPanel = [NSOpenPanel openPanel];
    [openPanel setAllowsMultipleSelection: NO];
    [openPanel setCanChooseFiles:YES];
    [openPanel setCanCreateDirectories:YES];
    [openPanel setCanChooseDirectories:NO];
    [openPanel setAllowedFileTypes:kAllowFileTypes];
    if ([[NSUserDefaults standardUserDefaults] objectForKey:kLastSaveDir])
        openPanel.directoryURL = [NSURL fileURLWithPath:[[NSUserDefaults standardUserDefaults] objectForKey:kLastSaveDir]];
    
    //[openPanel setPrompt:NSLocalizedString(STR_RECORD_FOLDER_TITLE, @"")];
    
    if ([openPanel respondsToSelector:@selector(beginSheetModalForWindow:completionHandler:)])
    {
        [openPanel beginSheetModalForWindow:self.view.window completionHandler:^(NSInteger result)
         {
             if (result == NSFileHandlingPanelOKButton)
             {
                 NSArray* files = [openPanel URLs];
                 NSString* filePath = [[files objectAtIndex:0] path];
                 
                 BOOL isDirectory;
                 NSFileManager* fileManager = [NSFileManager defaultManager];
                 if ([fileManager fileExistsAtPath:filePath isDirectory:&isDirectory] && !isDirectory)
                 {
                     self->_eventRecords = [[NSMutableArray alloc] initWithContentsOfFile:filePath];
                     
                     // Save the path
                     self->_currentOpenPath = filePath;
                     [[NSUserDefaults standardUserDefaults] setObject:[self->_currentOpenPath stringByDeletingLastPathComponent] forKey:kLastSaveDir];
                     
                     self.view.window.title = [NSString stringWithFormat:@"Current file: %@",[self->_currentOpenPath lastPathComponent]];
                 }
             }
         }];
    }
    else
    {
    }
    
}

- (IBAction)onSaveRecord:(id)sender
{
    NSFileManager* fileManager = [NSFileManager defaultManager];
    if (!_currentOpenPath || ![fileManager fileExistsAtPath:_currentOpenPath])
    {
        [self openSaveFilePanel];
    }
    else
    {
        NSAlert* alertView = [[NSAlert alloc] init];
        alertView.messageText = @"Overwrite current file or save to new file?";
        [alertView addButtonWithTitle:@"Overwrite"];
        [alertView addButtonWithTitle:@"Save New"];
        
        [alertView beginSheetModalForWindow:self.view.window completionHandler:^(NSModalResponse returnCode){
            if (returnCode == NSAlertFirstButtonReturn)    //Overwrite
            {
                BOOL success = [self->_eventRecords writeToFile:self->_currentOpenPath atomically:NO];
                NSLog(@"Write file result %d", success);
            }
            else if (returnCode == NSAlertSecondButtonReturn)   // Save new
            {
                [self openSaveFilePanel];
            }
        }];
        
    }
}

- (void) openSaveFilePanel {
    NSString* dirPath = [[NSUserDefaults standardUserDefaults] objectForKey: kLastSaveDir];
    
    NSSavePanel* savePanel = [NSSavePanel savePanel];
    [savePanel setAllowedFileTypes:kAllowFileTypes];
    [savePanel setCanCreateDirectories:YES];
    if (dirPath)
        savePanel.directoryURL = [NSURL fileURLWithPath:dirPath];
    
    
    if ([savePanel respondsToSelector:@selector(beginSheetModalForWindow:completionHandler:)])
    {
        __weak typeof(self) weakSelf = self;
        [savePanel beginSheetModalForWindow:self.view.window completionHandler:^(NSInteger result)
         {
            __strong typeof(self) strongSelf = weakSelf;
             if (result == NSFileHandlingPanelOKButton)
             {
                 [[NSUserDefaults standardUserDefaults] setObject:savePanel.directoryURL.path forKey:kLastSaveDir];
                 
                 strongSelf->_currentOpenPath = savePanel.URL.path;
                 BOOL success = [strongSelf->_eventRecords writeToFile:self->_currentOpenPath atomically:NO];
                 NSLog(@"Write file result %d", success);
                 
                 dispatch_async(dispatch_get_main_queue(), ^{
                      strongSelf.view.window.title = [NSString stringWithFormat:@"Current file: %@",[strongSelf->_currentOpenPath lastPathComponent]];
                 });
             }
             else
             {
                 NSLog(@"Cancel saving");
                 return;
             }
         }];
    }
    else
    {
        NSLog(@"Cancel saving");
        return;
    }
}

- (IBAction)onReplay:(id)sender
{
    NSButton* sendBut = (NSButton*)sender;
    if (!isContinueRun)     // Start replay
    {
        isContinueRun = true;
        sendBut.title = @"Stop Replay";
        
        [self disableUI];
        self.butReplay.enabled = YES;
        
        iRunCount = [self.tfReplayNum integerValue];
        if (iRunCount == 0) // Infinitive
            iRunCount = -1;
        
        NSNumber* currentIndex = [NSNumber numberWithInteger:0];
        
        NSDictionary* dict = [_eventRecords objectAtIndex:0];
        NSTimeInterval sleepTime = [[dict objectForKey:kInterval] doubleValue];
        
        if (isContinueRun) {
            NSLog(@"perform onActionTimerFire");
            [self performSelector:@selector(onActionTimerFire:) withObject:currentIndex afterDelay:sleepTime];
        }
    }
    else    // Stop Replay
    {
        [self onStopPlay:sender];
    }
    
}

- (IBAction)onStopPlay:(id)sender
{
    NSButton* sendBut = (NSButton*)sender;
    sendBut.title = @"Replay";
    
    [self enableUI];

    isContinueRun = false;
    
    NSLog(@"Stop replay");
}

- (int) mouseClick:(NSPoint) pt  type:(int) type
{
//    NSLog(@"leftClickMouse start");
    CGPoint newloc = pt;
    
    CGEventRef eventRef;
    
    if (type == kOpCodeControlMouseLeftDown)
    {
        eventRef = CGEventCreateMouseEvent(NULL, kCGEventLeftMouseDown, newloc,
                                           kCGMouseButtonLeft);
        
        //Apparently, a bug in xcode requires this next line
        CGEventSetType(eventRef, kCGEventLeftMouseDown);
        CGEventPost(kCGHIDEventTap, eventRef);
        CFRelease(eventRef);
    }
    else if (type == kOpCodeControlMouseLeftUp)
    {
        eventRef = CGEventCreateMouseEvent(NULL, kCGEventLeftMouseUp, newloc,
                                           kCGMouseButtonLeft);
        
        //Apparently, a bug in xcode requires this next line
        CGEventSetType(eventRef, kCGEventLeftMouseUp);
        CGEventPost(kCGHIDEventTap, eventRef);
        CFRelease(eventRef);
    }
    
    return 0;
}


- (int) mouseMoving:(CGPoint)pt
{
    //NSLog(@"mouseMoving start");
    CGPoint newloc = pt;
    
    CGEventRef eventRef;
    
    eventRef = CGEventCreateMouseEvent(NULL, kCGEventMouseMoved, newloc, kCGMouseButtonLeft);
    
    //Apparently, a bug in xcode requires this next line
    CGEventPost(kCGHIDEventTap, eventRef);
    CFRelease(eventRef);
    
    //NSLog(@"mouseMoving end");
    return 0;
}

- (void) onActionTimerFire:(NSNumber*) numb
{
    NSInteger nIndex = [numb integerValue];
    if (isContinueRun) {
        NSLog(@" onActionTimerFire run");
        
        NSDictionary* dict = [_eventRecords objectAtIndex:nIndex];
        
        NSString* pointLocation = [dict objectForKey:kMouseLocation];
        
        NSPoint location = NSPointFromString(pointLocation);
        
        //            NSPoint currentMouseLocation = [NSEvent mouseLocation];
        
        int type = [[dict objectForKey:kEventType] intValue];
        
        [self mouseMoving: [ViewController carbonScreenPointFromCocoaScreenPoint:location]];
        if ((type > kOpCodeControlNone) && (type < kOpCodeControlMouseLeftDrag))
            [self mouseClick:[ViewController carbonScreenPointFromCocoaScreenPoint:location] type:type];
    
        nIndex++;
        
        if (nIndex >= [_eventRecords count]) {
            nIndex = 0;
            if (iRunCount > 0) {
                iRunCount--;
            }
        }
    
        _curIndex = nIndex;
        
        if (isContinueRun && iRunCount != 0) {
            NSDictionary* dict = [_eventRecords objectAtIndex:nIndex];
            NSTimeInterval sleepTime = [[dict objectForKey:kInterval] doubleValue];
            
            //_realTimeRunloopStart = CACurrentMediaTime();
            //_realTimeRunloopInterval = 0;
            
            [TPPreciseTimer scheduleAction:@selector(onRunLoopTimerFire) target:self inTimeInterval:sleepTime];
            
//                mach_timebase_info(&timebase_info);
//                uint64_t time_to_wait = nanos_to_abs(sleepTime*NSEC_PER_SEC);
//                mach_wait_until(mach_absolute_time() + time_to_wait);
//                _realTimeRunloopInterval = CACurrentMediaTime() - _realTimeRunloopStart;
            
//                NSLog(@"perform onActionTimerFire %d in loop %d after %f realTime %f", (int)nIndex, (int)iRunCount, sleepTime, _realTimeRunloopInterval);
        }
        else
        {
            [self onStopPlay:self.butReplay];
        }
        
    }
    
}

- (void) onRunLoopTimerFire
{
    NSLog(@"Run loop finish");
    //_realTimeRunloopInterval = CACurrentMediaTime() - _realTimeRunloopStart;
    //NSDictionary* dict = [_eventRecords objectAtIndex:_curIndex];
    //NSTimeInterval sleepTime = [[dict objectForKey:kInterval] doubleValue];
    //NSLog(@"perform onActionTimerFire %d in loop %d after %f realTime %f", (int)_curIndex, (int)iRunCount, sleepTime, _realTimeRunloopInterval);
    
    [self onActionTimerFire:[NSNumber numberWithInteger:_curIndex]];
}


- (IBAction)onAutoClick:(id)sender
{
    NSButton* sendBut = (NSButton*) sender;
    
    _isAutoClicking = !_isAutoClicking;
    if (_isAutoClicking)
    {
        _autoClickInterval = self.tfSecond.doubleValue + self.tfMiliSec.doubleValue / 1000.0;
        
        if (_autoClickInterval > kMouseUpDownInterval)
        {
            sendBut.title = @"Stop Auto Click";
            
            [self disableUI];
            self.butAutoClick.enabled = YES;
            self.tfSecond.enabled = YES;
            self.tfMiliSec.enabled = YES;
            
            //[self startAutoClickLoop];
            [TPPreciseTimer scheduleAction:@selector(startAutoClickLoop) target:self inTimeInterval:_autoClickInterval];
        }
        else
        {
            _autoClickInterval = 0.0;
            _isAutoClicking = NO;
        }
    }
    else
    {
        sendBut.title = @"Auto Click";
        [self enableUI];
        
        _autoClickInterval = 0.0;
    }
}

- (void) startAutoClickLoop
{
    if (_isAutoClicking)
    {
        CGPoint mousePoint = [NSEvent mouseLocation] ;
        [self mouseClick: [ViewController carbonScreenPointFromCocoaScreenPoint:mousePoint] type:kOpCodeControlMouseLeftDown];
        
        _realTimeRunloopStart = CACurrentMediaTime();
        [TPPreciseTimer scheduleAction:@selector(onAutoClickMouseDownFire) target:self inTimeInterval:kMouseUpDownInterval];
    }
}

- (void) onAutoClickMouseDownFire
{
    NSPoint mousePoint = [NSEvent mouseLocation];
    [self mouseClick: [ViewController carbonScreenPointFromCocoaScreenPoint:mousePoint] type:kOpCodeControlMouseLeftUp];
    
    if (_isAutoClicking)
    {
        double realInterval = CACurrentMediaTime() - _realTimeRunloopStart;
        if (realInterval < _autoClickInterval)
        {
            [TPPreciseTimer scheduleAction:@selector(startAutoClickLoop) target:self inTimeInterval:(_autoClickInterval - realInterval)];
        }
        else
        {
            [self startAutoClickLoop];
        }
    }
}

+ (uint16_t) convertFromKeyMacToCommonKey: (CGKeyCode) keyCode
{
    uint16_t returnValue;
    
    switch (keyCode) {
        case kVK_ANSI_Q:
            returnValue = Q;
            break;
        case kVK_ANSI_W:
            returnValue = W;
            break;
        case kVK_ANSI_E:
            returnValue = E;
            break;
        case kVK_ANSI_R:
            returnValue = R;
            break;
        case kVK_ANSI_T:
            returnValue = T;
            break;
        case kVK_ANSI_Y:
            returnValue = Y;
            break;
        case kVK_ANSI_U:
            returnValue = U;
            break;
        case kVK_ANSI_I:
            returnValue = I;
            break;
        case kVK_ANSI_O:
            returnValue = O;
            break;
        case kVK_ANSI_P:
            returnValue = P;
            break;
        case kVK_ANSI_A:
            returnValue = A;
            break;
        case kVK_ANSI_S:
            returnValue = S;
            break;
        case kVK_ANSI_D:
            returnValue = D;
            break;
        case kVK_ANSI_F:
            returnValue = F;
            break;
        case kVK_ANSI_G:
            returnValue = G;
            break;
        case kVK_ANSI_H:
            returnValue = H;
            break;
        case kVK_ANSI_J:
            returnValue = J;
            break;
        case kVK_ANSI_K:
            returnValue = K;
            break;
        case kVK_ANSI_L:
            returnValue = L;
            break;
        case kVK_ANSI_Z:
            returnValue = Z;
            break;
        case kVK_ANSI_X:
            returnValue = X;
            break;
        case kVK_ANSI_C:
            returnValue = C;
            break;
        case kVK_ANSI_V:
            returnValue = V;
            break;
        case kVK_ANSI_B:
            returnValue = B;
            break;
        case kVK_ANSI_N:
            returnValue = N;
            break;
        case kVK_ANSI_M:
            returnValue = M;
            break;
        case kVK_ANSI_1:
            returnValue = D1;
            break;
        case kVK_ANSI_2:
            returnValue = D2;
            break;
        case kVK_ANSI_3:
            returnValue = D3;
            break;
        case kVK_ANSI_4:
            returnValue = D4;
            break;
        case kVK_ANSI_5:
            returnValue = D5;
            break;
        case kVK_ANSI_6:
            returnValue = D6;
            break;
        case kVK_ANSI_7:
            returnValue = D7;
            break;
        case kVK_ANSI_8:
            returnValue = D8;
            break;
        case kVK_ANSI_9:
            returnValue = D9;
            break;
        case kVK_ANSI_0:
            returnValue = D0;
            break;
        case kVK_ANSI_Equal:
            returnValue = Oemplus;
            break;
        case kVK_ANSI_Minus:
            returnValue = OemMinus;
            break;
        case kVK_ANSI_RightBracket:
            returnValue = OemCloseBrackets;
            break;
        case kVK_ANSI_LeftBracket:
            returnValue = OemOpenBrackets;
            break;
        case kVK_ANSI_Quote:
            returnValue = Oemtilde;
            break;
        case kVK_ANSI_Semicolon:
            returnValue = OemSemicolon;
            break;
        case kVK_ANSI_Backslash:
            returnValue = OemQuotes;
            break;
        case kVK_ANSI_Comma:
            returnValue = Oemcomma;
            break;
        case kVK_ANSI_Slash:
            returnValue = OemQuestion;
            break;
        case kVK_ANSI_Period:
            returnValue = OemPeriod;
            break;
        case kVK_ANSI_Grave:
            returnValue = Oem8;
            break;
        case kVK_ANSI_KeypadDecimal:
            returnValue = Decimal;
            break;
        case kVK_ANSI_KeypadMultiply:
            returnValue = Multiply;
            break;
        case kVK_ANSI_KeypadPlus:
            returnValue = Add;
            break;
        case kVK_ANSI_KeypadClear:
            returnValue = NumLock;
            break;
        case kVK_ANSI_KeypadDivide:
            returnValue = Divide;
            break;
        case kVK_ANSI_Keypad0:
            returnValue = NumPad0;
            break;
        case kVK_ANSI_Keypad1:
            returnValue = NumPad1;
            break;
        case kVK_ANSI_Keypad2:
            returnValue = NumPad2;
            break;
        case kVK_ANSI_Keypad3:
            returnValue = NumPad3;
            break;
        case kVK_ANSI_Keypad4:
            returnValue = NumPad4;
            break;
        case kVK_ANSI_Keypad5:
            returnValue = NumPad5;
            break;
        case kVK_ANSI_Keypad6:
            returnValue = NumPad6;
            break;
        case kVK_ANSI_Keypad7:
            returnValue = NumPad7;
            break;
        case kVK_ANSI_Keypad8:
            returnValue = NumPad8;
            break;
        case kVK_ANSI_Keypad9:
            returnValue = NumPad9;
            break;
        case kVK_ANSI_KeypadEnter:
            returnValue = Enter;
            break;
        case kVK_ANSI_KeypadMinus:
            returnValue = Subtract;
            break;
        case kVK_ANSI_KeypadEquals:
            returnValue = Oemplus;
            break;
        case kVK_Return:
            returnValue = Enter;
            break;
        case kVK_Tab:
            returnValue = Tab;
            break;
        case kVK_Space:
            returnValue = Space;
            break;
        case kVK_Delete:
            returnValue = Back;
            break;
        case kVK_Escape:
            returnValue = Escape;
            break;
        case kVK_Command:
            returnValue = LWin;
            break;
        case kVK_Shift:
            returnValue = ShiftKey;
            break;
        case kVK_CapsLock:
            returnValue = CapsLock;
            break;
        case kVK_Option:
            returnValue = Menu;
            break;
        case kVK_Control:
            returnValue = ControlKey;
            break;
        case kVK_RightShift:
            returnValue = RShiftKey;
            break;
        case kVK_RightOption:
            returnValue = RMenu;
            break;
        case kVK_RightControl:
            returnValue = RControlKey;
            break;
        case kVK_Function:
            returnValue = NoName;
            break;
        case kVK_F1:
            returnValue = F1;
            break;
        case kVK_F2:
            returnValue = F2;
            break;
        case kVK_F3:
            returnValue = F3;
            break;
        case kVK_F4:
            returnValue = F4;
            break;
        case kVK_F5:
            returnValue = F5;
            break;
        case kVK_F6:
            returnValue = F6;
            break;
        case kVK_F7:
            returnValue = F7;
            break;
        case kVK_F8:
            returnValue = F8;
            break;
        case kVK_F9:
            returnValue = F9;
            break;
        case kVK_F10:
            returnValue = F10;
            break;
        case kVK_F11:
            returnValue = F11;
            break;
        case kVK_F12:
            returnValue = F12;
            break;
        case kVK_F13:
            returnValue = F13;
            break;
        case kVK_F14:
            returnValue = F14;
            break;
        case kVK_F15:
            returnValue = F15;
            break;
        case kVK_F16:
            returnValue = F16;
            break;
        case kVK_F17:
            returnValue = F17;
            break;
        case kVK_F18:
            returnValue = F18;
            break;
        case kVK_F19:
            returnValue = F19;
            break;
        case kVK_F20:
            returnValue = F20;
            break;
        case kVK_VolumeUp:
            returnValue = VolumeUp;
            break;
        case kVK_VolumeDown:
            returnValue = VolumeDown;
            break;
        case kVK_Mute:
            returnValue = VolumeMute;
            break;
        case kVK_Help:
            returnValue = Help;
            break;
        case kVK_Home:
            returnValue = Home;
            break;
        case kVK_PageUp:
            returnValue = PageUp;
            break;
        case kVK_PageDown:
            returnValue = PageDown;
            break;
        case kVK_ForwardDelete:
            returnValue = Delete;
            break;
        case kVK_End:
            returnValue = End;
            break;
        case kVK_LeftArrow:
            returnValue = Left;
            break;
        case kVK_UpArrow:
            returnValue = Up;
            break;
        case kVK_RightArrow:
            returnValue = Right;
            break;
        case kVK_DownArrow:
            returnValue = Down;
            break;
        default:
            returnValue = 0;
            break;
    }
    
    return returnValue;
}

+ (CGPoint)carbonScreenPointFromCocoaScreenPoint:(NSPoint)cocoaPoint
{
    NSScreen *foundScreen = nil;
    CGPoint thePoint;
    
    for (NSScreen *screen in [NSScreen screens])
    {
        if (NSPointInRect(cocoaPoint, [screen frame]))
        {
            foundScreen = screen;
        }
    }
    
    if (foundScreen)
    {
        CGFloat screenHeight = [foundScreen frame].size.height;
        //thePoint = CGPointMake(cocoaPoint.x, screenHeight - cocoaPoint.y - 1);
        thePoint = CGPointMake(cocoaPoint.x, screenHeight - cocoaPoint.y);
    }
    else
    {
        thePoint = CGPointMake(0.0, 0.0);
    }
    
    return thePoint;
}

@end
