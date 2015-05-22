# CXLSlideList
a light weight and easy to use tableview with slide effect.


<img src="https://github.com/becomedragon/CXLSlideList/blob/master/Slide.gif?raw=true" alt="CXLSlideList Screenshot" width="370" height="686"/>

----
# Requirements
* Xcode 6 or higher

* Apple LLVM compiler

* iOS 7.0 or higher

* ARC

# Demo
There is an exampel in Example floder

# Installation
-----
##cocoapod


Install CocoaPods if not already available:
   
    $ [sudo] gem install cocoapods
    $ pod setup

Change to the directory of your Xcode project and edit PodFile:

    pod 'CXLSlideList'

Install into your Xcode project:
  
     pod install

##Manual Install
copy `CXLSlideListViewController.h /.m` to your project, and add `#import "CXLSlideListViewController.h"` to the file.

#Example Usage
In your AppDelegate's `- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions` create the view controller and assign table view controllers.
  
     //create three table view controller
     
      MainTableViewController * mainTable = [[MainTableViewController alloc] init];
       
    SecondTableViewController * secondTable = [[SecondTableViewController alloc] init];
    
    ThirdTableViewController * thirdTable = [[ThirdTableViewController alloc] init];
    
    //create CXLSlideList
    CXLSlideListViewController * cxlSlideListController = [[CXLSlideListViewController alloc] initWithMainTableViewController:mainTable secondTableViewController:secondTable thirdTableViewController:thirdTable];
    
    //assign CXLSlideList to window
    self.window.rootViewController = cxlSlideListController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
 

TableView's datasource is implement by your file, delegate is implement by CXLSlideList.

you just need to implement tableview's datasource,but you should addObserver in your file, when the tableview's click and slide event notification post:

    //main tableView click & slide Notification
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotification:) name:CXLDidClickMainTableViewCellNotification object:nil];
    
    //second tableivew click & slide Notification
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotification:) name:CXLDidClickMainTableViewCellNotification object:nil];
    
    //Third tableview click Notification
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotification:) name:CXLDidClickSecondTableViewCellNotification object:nil];
    
Here is some useful Class method provide by `CXLSlideList`:

    //Get Index
    +(NSIndexPath *)getMainTableViewIndexPath;
    +(NSIndexPath *)getSecondTableViewIndexPath;
    +(NSIndexPath *)getThirdTableViewIndexPath;

    //Set Gap
    +(void)setMainTableToSecondTableGap:(CGFloat)gap;
    +(void)setSecondTableToThirdTableGap:(CGFloat)gap;


The detail useage can be found in `Example`