//
//  Data.m
//  AppDemo
//
//  Created by user on 21/11/16.
//  Copyright © 2016 cris. All rights reserved.
//

#import "Data.h"

@implementation Data

@synthesize name, apellido, email, gender, ip;

-(id)initWithData:(NSString *)n theApellido:(NSString *)a theEmail:(NSString *)e theGender:(NSString *)g theIp:(NSString *)i
{
    if(self = [super init])
    {
        [self setName:n];
        [self setApellido:a];
        [self setEmail:e];
        [self setGender:g];
        [self setIp:i];
        
    }
    return self;
}

@end
