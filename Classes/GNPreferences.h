//
//  GNPreferences.h
//  Gmail Notifr
//
//  Created by James Chen on 1/24/13.
//  Copyright (c) 2013 ashchan.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GNPreferences : NSObject

@property (retain, readonly) NSMutableArray *accounts;
@property (assign) BOOL autoLaunch;
@property (assign) BOOL showUnreadCount;
@property (assign) NSTimeInterval autoCheckAfterInboxInterval;

+ (GNPreferences *)sharedInstance;
+ (void)setupDefaults;

- (void)writeBack;
- (void)addAccount:(id)account;
- (void)removeAccount:(id)account;
- (void)saveAccount:(id)account;
- (void)moveAccountFromRow:(NSUInteger)row toRow:(NSUInteger)newRow;

@end