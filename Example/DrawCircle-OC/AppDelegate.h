//
//  AppDelegate.h
//  DrawCircle-OC
//
//  Created by MJHee on 2017/3/29.
//  Copyright © 2017年 MJBaby. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

