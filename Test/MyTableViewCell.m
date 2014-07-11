//
//  MyTableViewCell.m
//  Test
//
//  Created by chen on 6/26/14.
//  Copyright (c) 2014 TEST. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

@synthesize titleLable;
@synthesize subTitleLable;
@synthesize switchButton;
@synthesize delegate;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)switchButtonAction:(id)sender
{
    [delegate swippableTableViewCell:self didTriggerWithStatus:switchButton.on];
}

@end
