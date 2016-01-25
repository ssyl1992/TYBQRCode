//
//  TYBQRScanToolView.h
//  TYBQRCodeDemo
//
//  Created by 滕跃兵 on 16/1/18.
//  Copyright © 2016年 滕跃兵. All rights reserved.
//

#import <UIKit/UIKit.h>


//typedef enum : NSUInteger {
//    ToolButtonTypeCancle = 100,
//    ToolButtonTypeFlash,
//} ToolButtonType;
//
//@class TYBQRScanToolView;
//@protocol TYBQRScanToolViewDelegate <NSObject>
//
//- (void)scanToolView:(TYBQRScanToolView *)scanToolView btnDidClickWithTag:(ToolButtonType)tag;
//
//@end


@interface TYBQRScanToolView : UIView
//@property (nonatomic, weak) id<TYBQRScanToolViewDelegate> delegate;
@property (nonatomic, strong) NSArray *items;
@end
