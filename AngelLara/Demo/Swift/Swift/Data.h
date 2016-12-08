//
//  Data.h
//  Swift
//
//  Created by rafa on 25/11/16.
//  Copyright © 2016 cris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject
{
    NSString *name;
    NSString *email;
    NSString *gender;
    NSString *age;
}

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *gender;
@property (nonatomic, strong) NSString *age;

-(id)initWithData:(NSString *)n theEmail:(NSString *)e theGender:(NSString *)g theAge:(NSString *)a;

@end
