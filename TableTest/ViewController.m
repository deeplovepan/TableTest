//
//  ViewController.m
//  TableTest
//
//  Created by Peter Pan on 4/15/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *babyTableView;


@end

@implementation ViewController

static NSString *cellid = @"CELL_ID";

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    UITableViewCell *cell = [self.babyTableView cellForRowAtIndexPath:indexPath];
    for(UIView *subview in cell.contentView.subviews)
    {
        NSLog(@"subview %@", subview);
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.babyTableView registerClass:[CustomCell class] forCellReuseIdentifier:cellid];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *title;
    switch (section) {
        case 0:
            title = @"基本資訊";
            break;
        case 1:
            title = @"進階資訊";
            break;
        case 2:
            title = @"私密資訊";
            break;
        default:
            break;
    }
    return title;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    NSString *title;
    switch (section) {
        case 0:
            title = @"基本資訊end";
            break;
        case 1:
            title = @"進階資訊end";
            break;
        case 2:
            title = @"私密資訊end";
            break;
        default:
            break;
    }
    return title;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    int rowCount = 0;
    
    switch (section) {
        case 0:
            rowCount = 5;
            break;
        case 1:
            rowCount = 5;
            break;
        case 2:
            rowCount = 7;
            break;
        default:
            break;
    }
    
    return rowCount;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:cellid forIndexPath:indexPath];
    
    
    
    NSLog(@"section %d row %d cell %p", indexPath.section, indexPath.row, cell);
    
    

    switch (indexPath.section) {
        case 0:
            switch (indexPath.row) {
                case 0:
                    cell.nameLabel.text = @"天然呆寶寶";
                    cell.cuteImageView.image = [UIImage imageNamed:@"baby.png"];
                    break;
                case 1:
                    cell.nameLabel.text = @"年齡: 1歲2個月";
                    break;
                case 2:
                    cell.nameLabel.text = @"興趣: 放空";
                    break;
                case 3:
                    cell.nameLabel.text = @"偶像: 彼得潘";
                    break;
                case 4:
                    cell.nameLabel.text = @"反應: 慢半拍";
                    break;
            }
            break;
        case 1:
            switch (indexPath.row) {
                case 0:
                    cell.nameLabel.text = @"星座: 水瓶";
                    break;
                case 1:
                    cell.nameLabel.text = @"出生地: 高雄";
                    break;
                case 2:
                    cell.nameLabel.text = @"智商: 180";
                    break;
                case 3:
                    cell.nameLabel.text = @"特技: 香菇頭";
                    break;
                case 4:
                    cell.nameLabel.text = @"心地: 善良";
                    break;
            }
            break;
        case 2:
             switch (indexPath.row) {
                 case 0:
                     cell.nameLabel.text = @"秘密: 不能說";
                     break;
                 case 1:
                     cell.nameLabel.text = @"暗戀對象: 同班同學";
                     break;
                 case 2:
                     cell.nameLabel.text = @"最怕: 算數學";
                     break;
                 case 3:
                     cell.nameLabel.text = @"最愛: mini.Haha";
                     break;
                 case 4:
                     cell.nameLabel.text = @"愛吃: 牛排";
                     break;
                 case 5:
                     cell.nameLabel.text = @"愛買: Apple";
                     break;
                 case 6:
                     cell.nameLabel.text = @"愛打: 桌球";
                     break;
                 default:
                     break;
             }
            break;
        default:
            break;
    
    }
    
    return cell;
}

#pragma mark - UITableViewDelegate


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

@end
