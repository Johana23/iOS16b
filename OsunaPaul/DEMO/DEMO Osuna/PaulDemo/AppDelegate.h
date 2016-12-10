

#import <UIKit/UIKit.h>
#include "Data.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

{
    NSString *databaseName;
    NSString *databasePath;
    NSMutableArray *people;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSString *databaseName;
@property (strong, nonatomic) NSString *databasePath;
@property (strong, nonatomic) NSMutableArray *people;

-(void)checkAndCreateDatabase;
-(void)readDataFromDatabase;
-(BOOL)insertIntoDatabase:(Data *)person;


@end

