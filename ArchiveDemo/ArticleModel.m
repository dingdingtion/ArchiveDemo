//
//  ArticleModel.m
//  ArchiveDemo
//
//  Created by DingDing on 16/1/153.
//  Copyright © 2016年 奶豆. All rights reserved.
//

#import "ArticleModel.h"

static NSString * const kArticleTitle = @"kArticleTitle";
static NSString * const kArticleContent = @"kArticleContent";

@implementation ArticleModel

- (id)init
{
    self = [super init];
    
    if (self) {
        
    }
    
    return self;
}

#pragma mark - 实现 NSSecureCoding 协议
/// NSSecureCoding 基于 NSCoding 保证了数据操作的安全（数据类型异常问题）

/// 归档 调用
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:_title forKey:kArticleTitle];
    [aCoder encodeObject:_content forKey:kArticleContent];
}

/// 解档进行调用
- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder
{
    /// 父类使用了 NSCoder 则使用 [super initWithCoder:decoder] 否则，只需要调用[super init]即可
    self = [super init];
    
    if (self)
    {
        _title = [aDecoder decodeObjectForKey:kArticleTitle];
        _content = [aDecoder decodeObjectForKey:kArticleContent];
    }
    
    return self;
}

+ (BOOL)supportsSecureCoding
{
    return YES;
}

@end