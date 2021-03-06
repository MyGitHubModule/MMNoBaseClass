//
//  MMViewControllerProtocol.h
//  Aspects
//
//  Created by chenjb on 2018/4/8.
//

#import <Foundation/Foundation.h>

/**
 ViewController协议
 */
@protocol MMViewControllerProtocol <NSObject>

@required

// 初始化ViewModel
- (void)initViewModel;

// 绑定ViewModel
- (void)bindViewModel;

@end
