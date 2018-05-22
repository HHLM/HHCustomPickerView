//
//  ViewController.m
//  HHCustomPickerView
//
//  Created by LXH on 2017/6/16.
//  Copyright © 2017年 HHLM. All rights reserved.
//

#import "ViewController.h"
#import "HHCustomPickerView.h"
#import "HHAddressModel.h"
@class HHData;
@interface ViewController ()<HHPickerViewDelegate>
{
    UILabel *lab;
}
@property (nonatomic, strong) HHCustomPickerView *pickerView;
@property (nonatomic, strong) HHData *cpdata;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    lab = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, CGRectGetWidth(self.view.frame), 40)];
    lab.textColor = [UIColor redColor];
    lab.textAlignment = NSTextAlignmentCenter;
    lab.font = [UIFont systemFontOfSize:24];
    [self.view addSubview:lab];
}
- (void)pickerViewSelectString:(NSString *)string {
    lab.text = string;
}

- (HHCustomPickerView *)pickerView {
    if (!_pickerView) {
        _pickerView = [[HHCustomPickerView alloc] initWithFrame:self.view.bounds showView:self.view];
        _pickerView.delegate = self;
    }return _pickerView;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.pickerView showPickerView:HHPickerAddrssType];
}
- (HHData *)cpdata {
    if (!_cpdata) {
        _cpdata = [[HHData alloc] init];;
    }return _cpdata;
}
@end
