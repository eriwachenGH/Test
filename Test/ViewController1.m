//
//  ViewController1.m
//  Test
//
//  Created by chenliangjie on 14-6-14.
//  Copyright (c) 2014年 TEST. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *test1 = NSLocalizedStringFromTable(@"OKButtonStr",NULL,@"AlertStrings");
    test1 = NULL;
    
    dataList = [[NSMutableArray arrayWithObjects:@"One",@"Two",@"Three", nil] retain];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)view1BackAction:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Table view data source

/*- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // two section
    return 1;
}
*/
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [dataList count];
}
/*
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section == 0)
    {
        return @"Select a profile";
    }
    else
    {
        return @"";
    }
}
*/
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"settingItem";
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...

    NSString *profileName = [dataList objectAtIndex:indexPath.row];
    cell.titleLable.text = profileName;
    cell.subTitleLable.text = @"Detail text";
    cell.switchButton.hidden = NO;
    cell.delegate = self;
    
    cell.accessoryType = UITableViewCellAccessoryNone;
    //[cell.imageView setImage:[UIImage imageNamed:@"appIcon.png"]];
    
    return cell;
}

#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CellViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"cellViewController1"];
    //detailViewController.delegate = self;
    //detailViewController.rowIndex = -1;
    
    [self.navigationController pushViewController:detailViewController animated:YES];
    //[detailViewController release];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - Table view cell delegate
- (void)swippableTableViewCell:(MyTableViewCell *)cell didTriggerWithStatus:(BOOL)status
{
}

@end
