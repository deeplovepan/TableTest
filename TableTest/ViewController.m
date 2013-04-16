//
//  ViewController.m
//  TableTest
//
//  Created by Peter Pan on 4/15/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *babyTableView;


@end

@implementation ViewController

static NSString *cellid = @"CELL_ID";

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

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 16;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellid forIndexPath:indexPath];
    
    NSLog(@"row %d cell %p", indexPath.row, cell);
    
    cell.imageView.image = nil;
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"天然呆寶寶";
            cell.imageView.image = [UIImage imageNamed:@"baby.png"];
            cell.detailTextLabel.text = @"真可愛";
            break;
        case 1:
            cell.textLabel.text = @"年齡: 1歲2個月";
            break;
        case 2:
            cell.textLabel.text = @"興趣: 放空";
            break;
        case 3:
            cell.textLabel.text = @"偶像: 彼得潘";
            break;
        case 4:
            cell.textLabel.text = @"反應: 慢半拍";
            break;
        case 5:
            cell.textLabel.text = @"星座: 水瓶";
            break;
        case 6:
            cell.textLabel.text = @"出生地: 高雄";
            break;
        case 7:
            cell.textLabel.text = @"智商: 180";
            break;
        case 8:
            cell.textLabel.text = @"特技: 香菇頭";
            break;
        case 9:
            cell.textLabel.text = @"心地: 善良";
            break;
        case 10:
            cell.textLabel.text = @"秘密: 不能說";
            break;
        case 11:
            cell.textLabel.text = @"暗戀對象: 同班同學";
            break;
        case 12:
            cell.textLabel.text = @"最怕: 算數學";
            break;
        case 13:
            cell.textLabel.text = @"最愛: mini.Haha";
            break;
        case 14:
            cell.textLabel.text = @"愛吃: 牛排";
            break;
        case 15:
            cell.textLabel.text = @"愛買: Apple";
            break;
        default:
            break;
    }
    
    return cell;
}


@end
