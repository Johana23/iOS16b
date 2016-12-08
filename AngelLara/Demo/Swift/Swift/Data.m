//
//  Data.m
//  Swift
//
//  Created by rafa on 25/11/16.
//  Copyright © 2016 cris. All rights reserved.
//

#import "Data.h"

@implementation Data
@synthesize name, email, gender, age;

-(id)initWithData:(NSString *)n theEmail:(NSString *)e theGender:(NSString *)g theAge:(NSString *)a
{
    if(self = [super init])
    {
        [self setName:n];
        [self setEmail:e];
        [self setGender:g];
        [self setAge:a];
        
    }
    return self;
}


@end
