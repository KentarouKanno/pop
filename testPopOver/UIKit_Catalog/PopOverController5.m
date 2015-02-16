//
//  PopOverController.m
//  UIKit_Catalog
//
//  Created by KentarOu on 2014/10/08.
//  Copyright (c) 2014年 KentarOu. All rights reserved.
//

#import "PopOverController5.h"
#import "PopOverController6.h"

@interface PopOverController5 ()<UITableViewDataSource,UITableViewDelegate>


@end

@implementation PopOverController5

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"PopOver Navigation";
    
//    UIBarButtonItem *bar = [[UIBarButtonItem alloc]initWithTitle:@"close" style:UIBarButtonItemStyleBordered target:self action:@selector(closeButton:)];
//    self.navigationItem.leftBarButtonItem = bar;
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.view.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    
    
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
//                             forBarMetrics:UIBarMetricsDefault];
//    self.navigationController.navigationBar.shadowImage = [UIImage new];
//    self.navigationController.navigationBar.translucent = YES;

}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:YES];
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
    
    PopOverController6 *nextView = [[PopOverController6 alloc]init];
    [self.navigationController pushViewController:nextView animated:YES];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}





@end
