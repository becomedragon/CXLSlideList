//
//  SecondTableViewController.m
//  CXLSlideList
//
//  Created by lawrence on 5/14/15.
//  Copyright (c) 2015 lawrence. All rights reserved.
//

#import "SecondTableViewController.h"
#import "CXLSlideListViewController.h"

@interface SecondTableViewController ()
@property (nonatomic ,strong) NSString * reuseIdentifier;
@end

@implementation SecondTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _reuseIdentifier = @"secondCell";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:_reuseIdentifier];
    
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor clearColor];
    self.tableView.tableFooterView = view;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotification:) name:CXLDidClickMainTableViewCellNotification object:nil];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:CXLDidClickMainTableViewCellNotification object:nil];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:_reuseIdentifier forIndexPath:indexPath];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:_reuseIdentifier];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"second table - %@",@([CXLSlideListViewController getMainTableViewIndexPath].row)];
    cell.textLabel.textAlignment = NSTextAlignmentLeft;
    cell.textLabel.font = [UIFont systemFontOfSize:12];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor lightGrayColor];
    return cell;
}

#pragma mark - Notification
-(void)handleNotification:(NSNotification *)notification{
    //NSIndexPath * indexPath = [CXLSlideListViewController getMainTableViewIndexPath];
    [self.tableView reloadData];
}
@end
