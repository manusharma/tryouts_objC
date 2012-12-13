//
//  TableCell.m
//  tableView_Manu
//
//  Created by Manu Sharma on 12/9/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import "TableCell.h"

@implementation TableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
   
    // Configure the view for the selected state
}

@end
