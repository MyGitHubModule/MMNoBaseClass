//
//  MMViewControllerInterceptor.m
//  Aspects
//
//  Created by chenjb on 2018/4/8.
//

#import "MMViewControllerInterceptor.h"
#import "Aspects.h"

@implementation MMViewControllerInterceptor

+ (void)load {
    [super load];
    
    [MMViewControllerInterceptor sharedInstance];
}

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static MMViewControllerInterceptor *sharedInstance = nil;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        // 拦截viewDidLoad方法
        [UIViewController aspect_hookSelector:@selector(viewDidLoad) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo>aspectInfo){
            
            [self mm_viewDidLoad:aspectInfo.instance];
        }  error:nil];
    }
    
    return self;
}

#pragma mark - Hook Methods
- (void)mm_viewDidLoad:(UIViewController <MMViewControllerProtocol>*)controller {
    // 只有遵守MMViewControllerProtocol的ViewController才进行配置，否则不是统一样式的ViewController
    if ([controller conformsToProtocol:@protocol(MMViewControllerProtocol)]) {
        // 进行一些统一的配置
        if (@available(iOS 11.0, *)) {
            UIScrollView.appearance.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }else {
            controller.automaticallyAdjustsScrollViewInsets = NO;
        }
        
        controller.edgesForExtendedLayout = UIRectEdgeNone;
        
        // 执行协议的方法
        [controller initViewModel];
        [controller bindViewModel];
    }
}
@end
