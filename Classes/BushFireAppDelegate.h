//
//  BushFireAppDelegate.h
//  BushFire
//
//  Created by Kevin O'Neill on 17/11/09.
//  Copyright Kevin O Neill 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BushFireViewController;

@interface BushFireAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    BushFireViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet BushFireViewController *viewController;

@end

