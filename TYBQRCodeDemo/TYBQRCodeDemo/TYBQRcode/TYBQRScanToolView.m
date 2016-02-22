//
//  TYBQRScanToolView.m
//  TYBQRCodeDemo
//
//  Created by 滕跃兵 on 16/1/18.
//  Copyright © 2016年 滕跃兵. All rights reserved.
//

#import "TYBQRScanToolView.h"




@implementation TYBQRScanToolView

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]){

        
    }
    return self;
}

- (void)setItems:(NSArray *)items{
    _items = items;
    for (int i = 0; i < items.count; i++) {
        
        [self addSubview:items[i]];
    }
}

- (void)layoutSubviews {
    for (int i = 0; i < self.items.count; i++) {
        [self.items[i] setFrame:CGRectMake(self.frame.size.width/self.items.count * i+10, 10, self.frame.size.width/self.items.count -20, self.frame.size.height-20)];
        [self addSubview:self.items[i]];
    }
}

//- (UIButton *)buttonWithTitle:(NSString *)title image:(UIImage *)image tag:(NSUInteger)tag{
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
//    [btn setTitle:title forState:UIControlStateNormal];
//    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
//    btn.tag = tag;
//    return btn;
//}
//- (void)btnClick:(UIButton *)sender {
//    [self.delegate scanToolView:self btnDidClickWithTag:sender.tag];
//}

@end
