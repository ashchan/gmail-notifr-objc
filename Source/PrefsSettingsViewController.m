//
//  PrefsSettingsViewController.m
//  Gmail Notifr
//
//  Created by James Chen on 1/27/13.
//  Copyright (c) 2013 ashchan.com. All rights reserved.
//

#import <Shortcut.h>
#import "PrefsSettingsViewController.h"
#import "GNPreferences.h"
#import "Mail_Notifr-Swift.h"

NSString *const GNDefaultsKeyCheckAllShortcut = @"GNDefaultsKeyCheckAllShortcut";

@interface PrefsSettingsViewController ()

@property (weak) IBOutlet NSButton *autoLaunchCheckBox;
@property (weak) IBOutlet NSButton *showUnreadCountCheckBox;
@property (weak) IBOutlet MASShortcutView *checkAllShortcutView;
@property (weak) IBOutlet NSTextField *shortcutsLabel;
@property (weak) IBOutlet NSTextField *shortcutCheckAllLabel;

@end

@implementation PrefsSettingsViewController

- (id)init {
    if (self = [super initWithNibName:@"PreferencesSettings" bundle:nil]) {
    }

    return self;
}

- (NSString *)title {
    return NSLocalizedString(@"Settings", nil);
}

- (NSString *)identifier {
    return PrefsToolbarItemSettings;
}

- (NSImage *)image {
    return [NSImage imageNamed:NSImageNamePreferencesGeneral];
}

- (void)loadView {
    [super loadView];
    [self.autoLaunchCheckBox setTitle:NSLocalizedString(@"Launch at login", nil)];
    [self.autoLaunchCheckBox setState:[GNPreferences sharedInstance].launchAtLogin ? NSControlStateValueOn : NSControlStateValueOff];
    [self.showUnreadCountCheckBox setTitle:NSLocalizedString(@"Show unread count in menu bar", nil)];
    [self.showUnreadCountCheckBox setState:[GNPreferences sharedInstance].showUnreadCount ? NSControlStateValueOn : NSControlStateValueOff];
    self.shortcutsLabel.stringValue = NSLocalizedString(@"shortcuts.label", nil);
    self.shortcutCheckAllLabel.stringValue = NSLocalizedString(@"shortcuts.checkall.label", nil);
    self.checkAllShortcutView.associatedUserDefaultsKey = GNDefaultsKeyCheckAllShortcut;
}

- (IBAction)saveAutoLaunch:(id)sender {
    [GNPreferences sharedInstance].launchAtLogin = self.autoLaunchCheckBox.state == NSControlStateValueOn;
}

- (IBAction)saveShowUnreadCount:(id)sender {
    [GNPreferences sharedInstance].showUnreadCount = self.showUnreadCountCheckBox.state == NSControlStateValueOn;
}

@end