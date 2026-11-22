#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow *window;
@end

@interface ViewController : UIViewController
@end

@implementation ViewController
- (void)viewDidLoad {
  [super viewDidLoad];
  self.view.backgroundColor = UIColor.systemBackgroundColor;
  UILabel *l = [[UILabel alloc] initWithFrame:self.view.bounds];
  l.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  l.textAlignment = NSTextAlignmentCenter;
  l.numberOfLines = 0;
  l.font = [UIFont boldSystemFontOfSize:28];
  l.text = @"Salut, AppForge";
  [self.view addSubview:l];
}
@end

@implementation AppDelegate
- (BOOL)application:(UIApplication *)app didFinishLaunchingWithOptions:(NSDictionary *)opts {
  self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
  self.window.rootViewController = [ViewController new];
  [self.window makeKeyAndVisible];
  return YES;
}
@end

int main(int argc, char *argv[]) {
  @autoreleasepool {
    return UIApplicationMain(argc, argv, nil, NSStringFromClass(AppDelegate.class));
  }
}
