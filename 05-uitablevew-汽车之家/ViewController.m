//
//  ViewController.m
//  05-uitablevew-汽车之家
//
//  Created by zhanglu1988em on 16/1/4.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "CarGroup.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView*  tableView;
@property (nonatomic,strong) NSArray*  dataList;

@end

@implementation ViewController

-(UITableView*) tableView
{
    if (_tableView ==  nil) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

-(NSArray*) dataList
{
    if (_dataList == nil) {
        _dataList = [CarGroup carGroups];
    }
    return _dataList;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.dataList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self.dataList[section] cars ]count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* id = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:id];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:id];
    }
    CarGroup *group = self.dataList[indexPath.section];
    Car *car = [Car carWithDict: group.cars[indexPath.row]];
    [cell.imageView setImage:[UIImage imageNamed:car.icon]];
    [cell.textLabel setText:car.name];
    return cell;
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [self.dataList[section] title];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self tableView];
}




@end
