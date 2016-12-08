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
    UILabel *terceroLabel;
    UILabel *cuartoLabel;
    UILabel *quintoLabel;
    UIImageView *myImageView;
}
@property (nonatomic, strong) UILabel *primerLabel;
@property (nonatomic, strong) UILabel *segundoLabel;
@property (nonatomic, strong) UILabel *terceroLabel;
@property (nonatomic, strong) UILabel *cuartoLabel;
@property (nonatomic, strong) UILabel *quintoLabel;
@property (nonatomic, strong) UIImageView *myImageView;
@end
