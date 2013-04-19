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
static NSString *anotherCellid = @"ANOTHER_CELL_ID";

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
   
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
    UITableViewCell *cell;
    if(indexPath.row % 2 == 0)
    {
        cell = [tableView dequeueReusableCellWithIdentifier:cellid forIndexPath:indexPath];
    }
    else
    {
        cell = [tableView dequeueReusableCellWithIdentifier:anotherCellid forIndexPath:indexPath];

    }
    
    NSLog(@"row %d cell %p", indexPath.row, cell);
    
    return cell;
}


@end
