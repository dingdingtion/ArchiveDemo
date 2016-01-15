//
//  ArticleModel.h
//  ArchiveDemo
//
//  Created by DingDing on 16/1/153.
//  Copyright © 2016年 奶豆. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArticleModel : NSObject<NSSecureCoding>

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *content;


@end
