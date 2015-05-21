//
//  ThirdTableViewController.m
//  CXLSlideList
//
//  Created by lawrence on 5/14/15.
//  Copyright (c) 2015 lawrence. All rights reserved.
//

#import "ThirdTableViewController.h"
#import "CXLSlideListViewController.h"

@interface ThirdTableViewController ()
@property (nonatomic ,strong) NSString * reuseIdentifier;
@end

@implementation ThirdTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _reuseIdentifier = @"thirdCell";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:_reuseIdentifier];
    
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor clearColor];
    self.tableView.tableFooterView = view;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotification:) name:CXLDidClickSecondTableViewCellNotification object:nil];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:CXLDidClickSecondTableViewCellNotification object:nil];
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
    cell.textLabel.text = [NSString stringWithFormat:@"third table - %@",@([CXLSlideListViewController getSecondTableViewIndexPath].row)];
    cell.textLabel.textAlignment = NSTextAlignmentLeft;
    cell.textLabel.font = [UIFont systemFontOfSize:12];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor grayColor];
    return cell;
}

#pragma mark - Table View Delegate
-(void)handleNotification:(NSNotification *)notification{
    //NSIndexPath * indexPath = [CXLSlideListViewController getSecondTableViewIndexPath];
    [self.tableView reloadData];
}
@end
