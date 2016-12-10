

#import <Foundation/Foundation.h>

@interface Data : NSObject
{
    NSString *name;
    NSString *apellido;
    
}

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *apellido;



-(id)initWithData:(NSString *)n theApellido:(NSString *)a;

@end
