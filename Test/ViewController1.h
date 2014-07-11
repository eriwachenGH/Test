//
//  ViewController1.h
//  Test
//
//  Created by chenliangjie on 14-6-14.
//  Copyright (c) 2014年 TEST. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController1 : UIViewController<MyTableViewCellDelegate>
{
    IBOutlet UITableView *testTableVIew;
    
    NSMutableArray *dataList;
}

@end
