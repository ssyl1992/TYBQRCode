//
//  ViewController.m
//  TYBQRCodeDemo
//
//  Created by 滕跃兵 on 16/1/15.
//  Copyright © 2016年 滕跃兵. All rights reserved.
//

#import "ViewController.h"
#import "TYBQRCodeCreater.h"
#import "TYBQRScanViewController.h"

@interface ViewController ()<TYBQRScanViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) TYBQRScanViewController *scanVc;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.imageView.image = [TYBQRCodeCreater createQRImage:[TYBQRCodeCreater createWithString:@"www.dansltech.com" qrColor:[UIColor blackColor] bgColor:[UIColor whiteColor] size:CGSizeMake(240, 240)] logoImage:[UIImage imageNamed:@"dsl"]];
    
}

- (IBAction)scan:(id)sender {
    _scanVc = [TYBQRScanViewController scanView];
    _scanVc.delegate = self;
//    _scanVc.scanAnimation = YES;
    _scanVc.scanAngelColor = [UIColor redColor];
    _scanVc.toolViewBgColor = [UIColor clearColor];
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn2 setTitle:@"灯光开关" forState:UIControlStateNormal];
    [btn2 setBackgroundColor:[UIColor purpleColor]];
    [btn2 addTarget:self action:@selector(torch:) forControlEvents:UIControlEventTouchUpInside];
//
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"111" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor redColor]];
    
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn1 setTitle:@"222" forState:UIControlStateNormal];
    [btn1 setBackgroundColor:[UIColor blueColor]];
//
    _scanVc.toolItems = @[btn2];
    
    [self.navigationController pushViewController:_scanVc animated:YES];
}

- (void)torch:(id)sender {
    [_scanVc toggleTorch];
    
}
- (void)scanView:(TYBQRScanViewController *)scanViewController endScanWithResult:(NSString *)result{
    [self.navigationController popViewControllerAnimated:YES];
  
}

@end
