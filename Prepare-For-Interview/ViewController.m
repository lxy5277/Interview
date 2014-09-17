//
//  ViewController.m
//  Prepare-For-Interview
//
//  Created by LiuXiaoyu on 9/13/14.
//  Copyright (c) 2014 LiuXiaoyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) NSArray *fontNames;
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    
//    [[UIFont familyNames] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
//        self.fontNames = [self.fontNames arrayByAddingObjectsFromArray:[UIFont fontNamesForFamilyName:obj]];
//    }];
//    [self.tableview reloadData];
    [self.tableview registerClass:[UITableViewCell class] forCellReuseIdentifier:NSStringFromClass(self.class)];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [UIFont familyNames].count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [UIFont fontNamesForFamilyName:[UIFont familyNames][section]].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(self.class)];
    cell.textLabel.text = [UIFont fontNamesForFamilyName:[UIFont familyNames][indexPath.section]][indexPath.row];
    cell.textLabel.font = [UIFont fontWithName:cell.textLabel.text size:14];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [UIFont familyNames][section];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
