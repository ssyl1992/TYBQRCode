//
//  TYBQRCodeCreater.h
//  TYBQRCodeDemo
//
//  Created by 滕跃兵 on 16/1/15.
//  Copyright © 2016年 滕跃兵. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TYBQRCodeCreater : NSObject

/**
 *  生成二维码图片
 *
 *  @param string 二维码内容
 *
 *  @return 返回生成的二维码图片
 */
+ (UIImage *)createWithString:(NSString *)string;


/**
 *  生成自定义颜色的二维码图片
 *
 *  @param string  二维码内容
 *  @param qrColor 二维码颜色
 *  @param bgColor 二维码背景颜色,颜色太深会造成无法识别二维码内容
 *
 *  @return 返回自定义二维码图片
 */
+ (UIImage *)createWithString:(NSString *)string qrColor:(UIColor *)qrColor bgColor:(UIColor *)bgColor size:(CGSize)size;


/**
 *  为二维码图片添加Logo
 *
 *  @param qrImage   二维码图片
 *  @param logoImage logo图片
 *
 *  @return 返回带有logo的二维码图片
 */
+(UIImage *)createQRImage:(UIImage *)qrImage logoImage:(UIImage *)logoImage ;

@end
