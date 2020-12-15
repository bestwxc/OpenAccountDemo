//
//  AppDelegate.h
//  OpenAccount
//
//  Created by jiejie on 2020/12/15.
//  Copyright © 2020 jiejie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

