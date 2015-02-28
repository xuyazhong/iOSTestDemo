//
//  RootViewController.h
//  TableView
//
//  Created by xuyazhong on 15/2/28.
//  Copyright (c) 2015年 xuyazhong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)btnClick:(id)sender;

@end
