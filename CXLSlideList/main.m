//
//  main.m
//  CXLSlideList
//
//  Created by lawrence on 5/13/15.
//  Copyright (c) 2015 lawrence. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @try {
        @autoreleasepool {
            return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        }
    }
    @catch (NSException *exception) {
        
        @throw exception;
    }

}
