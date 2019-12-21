//
//  UIView+JKIB.m
//  JKCategories
//
//  Created by ran wenjie on 2019/12/21.
//  Copyright © 2019 www.skyfox.org. All rights reserved.
//

#import "UIView+JKIB.h"
#import <objc/runtime.h>

@implementation UIView (JKIB)

- (CGFloat)jk_radius{
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}

- (void)setJk_radius:(CGFloat)jk_radius{
    
    self.layer.cornerRadius = jk_radius;
    self.layer.masksToBounds = YES;
    
    objc_setAssociatedObject(self, @selector(jk_radius), @(jk_radius), OBJC_ASSOCIATION_RETAIN);
}

@end
