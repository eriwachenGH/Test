//
//  MyTableViewCell.h
//  Test
//
//  Created by chen on 6/26/14.
//  Copyright (c) 2014 TEST. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyTableViewCell;

@protocol MyTableViewCellDelegate <NSObject>

- (void)swippableTableViewCell:(MyTableViewCell *)cell didTriggerWithStatus:(BOOL)status;

@end

@interface MyTableViewCell : UITableViewCell
{
}

@property (nonatomic, retain) IBOutlet UILabel *titleLable;
@property (nonatomic, retain) IBOutlet UILabel *subTitleLable;
@property (nonatomic, retain) IBOutlet UISwitch *switchButton;
@property (nonatomic, retain) id <MyTableViewCellDelegate> delegate;

- (IBAction)switchButtonAction:(id)sender;

@end
