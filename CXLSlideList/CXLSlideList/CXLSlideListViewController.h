//
//  CXLSlideListViewController.h
//  CXLSlideList
//
//  Created by lawrence on 5/13/15.
//  Copyright (c) 2015 lawrence. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString * const CXLDidClickMainTableViewCellNotification = @"CXLDidClickMainTableViewCellNotification";
static NSString * const CXLDidClickSecondTableViewCellNotification = @"CXLDidClickSecondTableViewCellNotification";
static NSString * const CXLDidClickThirdTableViewCellNotification = @"CXLDidClickThirdTableViewCellNotification";

@interface CXLSlideListViewController : UIViewController

-(id)initWithMainTableViewController:(UITableViewController *)mainTableViewController
             secondTableViewController:(UITableViewController *)secondTableViewController
              thirdTableViewController:(UITableViewController *)thirdTableViewController;

//Get Index
+(NSIndexPath *)getMainTableViewIndexPath;
+(NSIndexPath *)getSecondTableViewIndexPath;
+(NSIndexPath *)getThirdTableViewIndexPath;

//Set Gap
+(void)setMainTableToSecondTableGap:(CGFloat)gap;
+(void)setSecondTableToThirdTableGap:(CGFloat)gap;
@end
