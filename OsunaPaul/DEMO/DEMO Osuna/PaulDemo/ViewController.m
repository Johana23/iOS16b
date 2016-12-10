#import "ViewController.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize lblTable, tbName, tbApellido;

-(IBAction)AddPerson:(id)sender
{
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    Data *person = [[Data alloc] initWithData:tbName.text theApellido:tbApellido.text];
    BOOL returnCode = [mainDelegate insertIntoDatabase:person];
    
    NSString *returnMsg = @"Se agrego un registro";
    
    if(returnCode == NO)
        returnMsg = @"Ingreso fallido";
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Nuevo registro" message:returnMsg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
    
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    return NO;
}

-(IBAction)unwindToThisViewController:(UIStoryboardSegue *) sender
{
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint =  [touch locationInView:self.view];
    
    CGRect tableFrame = lblTable.frame;
    
    if (CGRectContainsPoint(tableFrame, touchPoint))
    {
        [self
         performSegueWithIdentifier:@"HomeSegueToTable" sender:self];
        
    }
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
