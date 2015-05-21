# CXLSlideList
a light weight and easy to use tableview with slide effect.
<img src="https://raw.githubusercontent.com/romaonthego/RESideMenu/master/Demo.gif?2" alt="RESideMenu Screenshot" width="320" height="568" />
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
 

TableView's datasource is implement by your file, delegate is implement by CXLSlideList. Here is some useful Class method:

    //Get Index
    +(NSIndexPath *)getMainTableViewIndexPath;
    +(NSIndexPath *)getSecondTableViewIndexPath;
    +(NSIndexPath *)getThirdTableViewIndexPath;

    //Set Gap
    +(void)setMainTableToSecondTableGap:(CGFloat)gap;
    +(void)setSecondTableToThirdTableGap:(CGFloat)gap;


The detail useage can be found in `Example`