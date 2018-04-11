

#import "ViewInViewController.h"
#import "React/RCTRootView.h"
#import "React/RCTRootViewDelegate.h"
#import "AppDelegate.h"

@interface ViewInViewController() <RCTRootViewDelegate>

@property (nonatomic, strong) NSLayoutConstraint *heightConstraint;

@end

@implementation ViewInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"View in View";
    
    // We need a reference to the AppDelegate since that is where we stored our `RCTBridge`.
  AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
  
  UIButton *but= [UIButton buttonWithType:UIButtonTypeRoundedRect];
  [but addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
  [but setFrame:CGRectMake(52, 452, 300, 40)];
  [but setTitle:@"Login" forState:UIControlStateNormal];
  [but setExclusiveTouch:YES];
  
  [self.view addSubview:but];

  RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:delegate.bridge moduleName:@"SimpleView" initialProperties:nil];
  [self.view addSubview:rootView];
  rootView.delegate = self;
  rootView.sizeFlexibility = RCTRootViewSizeFlexibilityHeight;
  
  rootView.translatesAutoresizingMaskIntoConstraints = NO;
  
  NSString *hVFL = @"H:|-0-[rootView]-0-|";
  NSString *vVfl = @"V:|-80-[rootView]";
  
  self.heightConstraint = [NSLayoutConstraint constraintWithItem:rootView
                                                       attribute:NSLayoutAttributeHeight
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:nil
                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                      multiplier:1.0 constant:0];
  
  [self.view addConstraint:self.heightConstraint];
  
  NSDictionary *dict = [[NSDictionary alloc] initWithObjects:@[rootView] forKeys:@[@"rootView"]];
  NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:hVFL options:0 metrics:nil views: dict];
  constraints = [constraints arrayByAddingObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:vVfl options:0 metrics:nil views:dict]];
  [self.view addConstraints: constraints];
  
}

-(void) buttonClicked:(UIButton*)sender {
  NSLog(@"you clicked on button %@", sender.tag);
}

- (void)rootViewDidChangeIntrinsicSize:(RCTRootView *)rootView {
  self.heightConstraint.constant = rootView.intrinsicContentSize.height;
//  [self.view layoutIfNeeded];
}

@end
