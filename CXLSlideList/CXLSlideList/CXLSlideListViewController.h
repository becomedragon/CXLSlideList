//
//  CXLSlideListViewController.h
//  CXLSlideList
//
//  Created by lawrence on 5/13/15.
//  Copyright (c) 2015 lawrence. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *because the three tableview's delegate is implements by CXLSlideListViewController,so you need addObserver to listening the Notification.
 *every tableview's click notitifcation will be sent individually
 */

static NSString * const CXLDidClickMainTableViewCellNotification = @"CXLDidClickMainTableViewCellNotification";
static NSString * const CXLDidClickSecondTableViewCellNotification = @"CXLDidClickSecondTableViewCellNotification";
static NSString * const CXLDidClickThirdTableViewCellNotification = @"CXLDidClickThirdTableViewCellNotification";

@interface CXLSlideListViewController : UIViewController

/**
 *init method
 */
-(id)initWithMainTableViewController:(UITableViewController *)mainTableViewController
             secondTableViewController:(UITableViewController *)secondTableViewController
              thirdTableViewController:(UITableViewController *)thirdTableViewController;

/**
 *these method can return tableview's index.
 *you will need these method,when update tableview's cell
 */
+(NSIndexPath *)getMainTableViewIndexPath;
+(NSIndexPath *)getSecondTableViewIndexPath;
+(NSIndexPath *)getThirdTableViewIndexPath;

/**
 *Gap is distance between of two tableviews,default value is Screen_width / tableivew_count.
 *
 */
+(void)setMainTableToSecondTableGap:(CGFloat)gap;
+(void)setSecondTableToThirdTableGap:(CGFloat)gap;
@end
