# WW-PageControl
一个有动画的pagecontr
  一个有动画效果的PageControl，适合使用在类似banner的scrollview上，以动画交互的方式进行展示。

    

    如何使用

    

    1.导入头文件

    #import "AYPageControl.h"

    

    2.为pageControl设置总页数并绑定scrollview

    // 设置总页数

    self.pageControlView.numberOfPages = totalPages;

    // 绑定对应的scrollview

    self.pageControlView.bindingScrollView = self.bannerScrollView;

    // 设置形变小球的颜色

    self.pageControlView.selectedColor = [UIColor blackColor];

    // 设置背景小球的颜色

    self.pageControlView.unSelectedColor = [UIColor lightGrayColor];

    

    3.在代理方法中设置pageControl的属性

    // 将scrollview的contentOffset.x赋值给pageControl进行计算

    - (void)scrollViewDidScroll:(UIScrollView *)scrollView {

     self.pageControlView.contentOffset_x = scrollView.contentOffset.x;

    }

    // scrollview滑动玩后将最终的contentOffset传递过去

    - (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {

    self.pageControlView.lastContentOffset_x = scrollView.contentOffset.x;

    }

    // scrollview滑动玩后将最终的contentOffset传递过去（暂时未用到，后期添加功能使用）

    - (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {

    self.pageControlView.lastContentOffset_x = scrollView.contentOffset.x;

    }


