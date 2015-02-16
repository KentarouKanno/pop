//
//  PopOverController.m
//  UIKit_Catalog
//
//  Created by KentarOu on 2014/10/08.
//  Copyright (c) 2014年 KentarOu. All rights reserved.
//

#import "PopOverController3.h"
#import "PopOverController.h"

@interface PopOverController3 ()<UITableViewDataSource,UITableViewDelegate>


@end

@implementation PopOverController3

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"PopOver Navigation";
    
    UIBarButtonItem *bar = [[UIBarButtonItem alloc]initWithTitle:@"close" style:UIBarButtonItemStyleBordered target:self action:@selector(closeButton:)];
    self.navigationItem.leftBarButtonItem = bar;
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    
   
}

- (void)closeButton:(UIBarButtonItem*)button
{
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"index = %zd",indexPath.row];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PopOverController *nextView = [[PopOverController alloc]init];
    [self.navigationController pushViewController:nextView animated:YES];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}





@end
