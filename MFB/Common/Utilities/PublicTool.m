//
//  PublicTool.m
//  MFB
//
//  Created by 李霞 on 16/9/13.
//  Copyright © 2016年 xinpingTech. All rights reserved.
//

#import "PublicTool.h"

@implementation PublicTool
+(UITableView *)initTableViewWithFrame:(CGRect)frame bgColor:(UIColor *)bgColor superView:(UIView *)superView tag:(NSInteger)tag
{
    UITableView *tableView = (UITableView *)[superView viewWithTag:tag];
    if (!tableView) {
        tableView = [[UITableView alloc] initWithFrame:frame];
        tableView.backgroundColor = bgColor;
        tableView.tag = tag;
        [superView addSubview:tableView];
    }
    
    return tableView;
}

+(UIImageView *)initImageViewWithFrame:(CGRect)frame imageStr:(NSString *)imageStr superView:(UIView *)superView tag:(NSInteger)tag
{
    UIImageView *imageView = (UIImageView *)[superView viewWithTag:tag];
    if (!imageView) {
        imageView = [[UIImageView alloc] initWithFrame:frame];
        if (imageStr) {
            imageView.image = [UIImage imageNamed:imageStr];
        }
        imageView.tag = tag;
        [superView addSubview:imageView];
    }
    
    return imageView;
    
}

+(UILabel *)initLableWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font textAlignment:(NSTextAlignment)textAlignment superView:(UIView *)superView tag:(NSInteger)tag
{
    UILabel *lable = (UILabel *)[superView viewWithTag:tag];
    if (!lable) {
        lable = [[UILabel alloc] initWithFrame:frame];
        lable.text = text;
        lable.textColor = textColor;
        lable.font = font;
        lable.textAlignment = textAlignment;
        [superView addSubview:lable];
        lable.tag = tag;
        
    }
    return lable;
}

+(UIButton *)initButtonWithFrame:(CGRect)frame
                            text:(NSString *)text
                            font:(UIFont *)font
                 normalTextColor:(UIColor *)normalTextColor
                         normalBgColor:(UIColor *)normalBgColor
                             tag:(NSInteger)tag
                       superView:(UIView *)superView
                          target:(nullable id)target
                          action:(SEL)action
{
    UIButton *button = (UIButton *)[superView viewWithTag:tag];
    if (!button) {
        button = [[UIButton alloc] initWithFrame:frame];
        button.titleLabel.font = font;
        [button setTitle:text forState:UIControlStateNormal];
        [button setTitleColor:normalTextColor forState:UIControlStateNormal];
        button.backgroundColor = normalBgColor;
        button.tag = tag;
        [superView addSubview:button];
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return button;
}

@end
