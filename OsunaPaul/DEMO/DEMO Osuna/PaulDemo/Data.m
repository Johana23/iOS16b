

#import "Data.h"

@implementation Data

@synthesize name, apellido;

-(id)initWithData:(NSString *)n theApellido:(NSString *)a
{
    if(self = [super init])
    {
        [self setName:n];
        [self setApellido:a];
       
        
    }
    return self;
}

@end
