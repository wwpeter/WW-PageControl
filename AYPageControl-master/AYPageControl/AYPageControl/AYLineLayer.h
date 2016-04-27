//
//  AYLineLayer.h
//  AYPageControl
//
//  Created by Andy on 16/3/28.
//  Copyright © 2016年 Andy. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
@interface AYLineLayer : CALayer
/**
 *  页面的个数
 */
@property (nonatomic, assign) NSInteger numberOfPages;
/**
 *  当前页码
 */
@property (nonatomic, assign) NSInteger currentPage;
/**
 *  圆圈直径
 */
@property (nonatomic, assign) CGFloat ballDiameter;

/**
 *  未选中的颜色
 */
@property (nonatomic, strong) UIColor *unSelectedColor;
/**
 *  pageControl绑定的scrollview
 */
@property (nonatomic, strong) UIScrollView *bindingScrollView;
@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com