//
//  SiteCell.m
//  AppDemo
//
//  Created by user on 21/11/16.
//  Copyright © 2016 cris. All rights reserved.
//

#import "SiteCell.h"

@implementation SiteCell
@synthesize primerLabel, segundoLabel, myImageView;

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if(self){
        primerLabel = [[UILabel alloc] init];
        primerLabel.textAlignment = NSTextAlignmentLeft;
        
        if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) primerLabel.font = [UIFont systemFontOfSize:20];
        else
            primerLabel.font = [UIFont systemFontOfSize:16];
        
        primerLabel.backgroundColor = [UIColor clearColor];
        primerLabel.textColor = [UIColor blackColor];
        
        segundoLabel = [[UILabel alloc] init];
        segundoLabel.textAlignment = NSTextAlignmentLeft;
        
        if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) segundoLabel.font = [UIFont systemFontOfSize:16];
        else
            segundoLabel.font = [UIFont systemFontOfSize:14];
        
        segundoLabel.backgroundColor = [UIColor clearColor];
        segundoLabel.textColor = [UIColor blueColor];
        

        
        myImageView = [[UIImageView alloc]init];
        
        [self.contentView addSubview:myImageView];
        [self.contentView addSubview:primerLabel];
        [self.contentView addSubview:segundoLabel];
     
    }
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    CGRect frame;
    
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        frame = CGRectMake(15, 15, 80, 80);
        myImageView.frame = frame;
        
        frame = CGRectMake(200, 15, 460, 40);
        primerLabel.frame = frame;
        
        frame = CGRectMake(200, 60, 460, 40);
        segundoLabel.frame = frame;
        
    }
    else{
        frame = CGRectMake(5, 5, 40, 40);
        myImageView.frame = frame;
    
        frame = CGRectMake(110, 5, 260, 20);
        primerLabel.frame = frame;
    
        frame = CGRectMake(110, 30, 260, 20);
        segundoLabel.frame = frame;    }
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
