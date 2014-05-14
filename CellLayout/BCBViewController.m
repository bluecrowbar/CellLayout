//
//  BCBViewController.m
//  CellLayout
//
//  Created by Steven Vandeweghe on 5/14/14.
//  Copyright (c) 2014 Blue Crowbar. All rights reserved.
//

#import "BCBViewController.h"
#import "BCBTableViewCell.h"

@interface BCBViewController ()

@end



@implementation BCBViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 1;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UINib *nib = [UINib nibWithNibName:@"BCBTableViewCell" bundle:nil];
	[tableView registerNib:nib forCellReuseIdentifier:@"Cell"];
	BCBTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
	cell.myString = @"Label label label label label label";
	return cell;
}

@end
