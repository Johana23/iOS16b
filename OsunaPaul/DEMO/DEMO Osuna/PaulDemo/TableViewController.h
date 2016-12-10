
#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface TableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    AppDelegate *mainDelegate;
}

@property (nonatomic, strong) AppDelegate *mainDelegate;

@end
