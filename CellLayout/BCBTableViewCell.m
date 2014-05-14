//
//  BCBTableViewCell.m
//  CellLayout
//
//  Created by Steven Vandeweghe on 5/14/14.
//  Copyright (c) 2014 Blue Crowbar. All rights reserved.
//

#import "BCBTableViewCell.h"

@interface BCBTableViewCell ()

@property (nonatomic, weak) IBOutlet UILabel *myLabel;

@end



@implementation BCBTableViewCell

- (void)awakeFromNib
{
	self.myLabel.layer.borderColor = [UIColor redColor].CGColor;
	self.myLabel.layer.borderWidth = 1;
}


- (void)setMyString:(NSString *)myString
{
	_myString = myString;
	self.myLabel.text = myString;
}

@end
