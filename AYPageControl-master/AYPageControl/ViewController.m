//
//  ViewController.m
//  AYAnimaPageController
//
//  Created by Andy on 16/3/25.
//  Copyright © 2016年 Andy. All rights reserved.
//

#import "ViewController.h"
#import "AYPageControl.h"
#define totalPages 3
@interface ViewController () <UIScrollViewDelegate>

@property (nonatomic, strong) AYPageControlView *pageControlView;
@property (nonatomic, strong) UIScrollView *bannerScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.bannerScrollView = ({
        UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 120)];
        scrollView.showsVerticalScrollIndicator = NO;
        scrollView.showsHorizontalScrollIndicator = NO;
        scrollView.contentSize = CGSizeMake(totalPages * self.view.frame.size.width, 120);
        for (int index = 0; index < totalPages; index ++) {
            UIImageView *bannerImageView = ({
                UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(index * self.view.frame.size.width, 0, self.view.frame.size.width, 120)];
                imageView.image = [UIImage imageNamed:@"blog"];
                [scrollView addSubview:imageView];
                imageView;
            });
        }
        scrollView.delegate = self;
        scrollView.pagingEnabled = YES;
        [self.view addSubview:scrollView];
        scrollView;
    });
    self.pageControlView = [[AYPageControlView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 300) * .5, 200, 300, 40)];
    self.pageControlView.numberOfPages = totalPages;
    self.pageControlView.bindingScrollView = self.bannerScrollView;
    self.pageControlView.selectedColor = [UIColor cyanColor];
    self.pageControlView.unSelectedColor = [UIColor darkGrayColor];
    self.pageControlView.backgroundColor = [UIColor colorWithRed:22/255.0 green:170/255.0 blue:100/255.0 alpha:1];
    [self.view addSubview:self.pageControlView];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {

    self.pageControlView.contentOffset_x = scrollView.contentOffset.x;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
    self.pageControlView.lastContentOffset_x = scrollView.contentOffset.x;
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    
    self.pageControlView.lastContentOffset_x = scrollView.contentOffset.x;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com