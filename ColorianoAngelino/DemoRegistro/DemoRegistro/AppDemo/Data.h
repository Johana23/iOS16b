//
//  Data.h
//  AppDemo
//
//  Created by user on 21/11/16.
//  Copyright © 2016 cris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject
{
    NSString *name;
    NSString *apellido;
    NSString *email;
    NSString *gender;
    NSString *ip;
}

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *apellido;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *gender;
@property (nonatomic, strong) NSString *ip;


-(id)initWithData:(NSString *)n theApellido:(NSString *)a theEmail:(NSString *)e theGender:(NSString *)g theIp:(NSString *)i;

@end
