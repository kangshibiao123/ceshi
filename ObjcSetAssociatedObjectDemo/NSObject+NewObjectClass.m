//
//  NSObject+NewObjectClass.m
//  ObjcSetAssociatedObjectDemo
//
//  Created by kangshibiao on 16/8/2.
//  Copyright © 2016年 ZheJiangTianErRuanJian. All rights reserved.
//

#import "NSObject+NewObjectClass.h"
#import <objc/runtime.h>

static char nameKey;

@implementation NSObject (NewObjectClass)

- (void)setName:(NSString *)name{
    //er xiu si en
    objc_setAssociatedObject(self, &nameKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (NSString *)name{
    
  return  objc_getAssociatedObject(self, &nameKey);
    
}
static char arrKey;

- (void)setDatasArr:(NSArray *)datasArr{
    
    objc_setAssociatedObject(self, &arrKey, datasArr,OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSArray *)datasArr{
    
    return  objc_getAssociatedObject(self, &arrKey);
    
}
static char liangJingLi;

- (void)setLianJingLi:(NSString *)lianJingLi{
    
    objc_setAssociatedObject(self, &liangJingLi, lianJingLi, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
}
- (NSString *)lianJingLi{
    
    return objc_getAssociatedObject(self, &liangJingLi);
    
}
@end
