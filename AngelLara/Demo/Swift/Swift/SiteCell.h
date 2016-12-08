//
//  SiteCell.h
//  AppDemo
//
//  Created by user on 21/11/16.
//  Copyright © 2016 cris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SiteCell : UITableViewCell

{
    UILabel *primerLabel;
    UILabel *segundoLabel;
    UIImageView *myImageView;
}
@property (nonatomic, strong) UILabel *primerLabel;
@property (nonatomic, strong) UILabel *segundoLabel;
@property (nonatomic, strong) UIImageView *myImageView;
@end
