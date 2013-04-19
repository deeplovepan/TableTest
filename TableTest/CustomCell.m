//
//  CustomCell.m
//  TableTest
//
//  Created by Peter Pan on 4/17/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(29, 13, 191, 21)];
        [self.contentView addSubview:self.nameLabel];
        
        self.cuteImageView = [[UIImageView alloc] initWithFrame:CGRectMake(13, 42, 44, 44)];
        [self.contentView addSubview:self.cuteImageView];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
