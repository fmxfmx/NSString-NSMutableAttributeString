//
//  NSString+NSMutableAttributedString.m
//  NSString+NSMutableAttributeString
//
//  Created by fengmingxiao on 2017/2/21.
//  Copyright © 2017年 小灬豆米. All rights reserved.
//

#import "NSString+NSMutableAttributedString.h"

@implementation NSString (NSMutableAttributedString)

- (NSMutableAttributedString *)setStringBackgroundColor:(UIColor *)color range:(NSRange)range
{
    NSDictionary *attrDic = @{NSBackgroundColorAttributeName:color};
    
    return [self setStringAttributes:attrDic range:range];
}

- (NSMutableAttributedString *)setStringFont:(UIFont *)font range:(NSRange)range
{
    NSDictionary *attrDic = @{NSFontAttributeName:font};
    return [self setStringAttributes:attrDic range:range];
}

- (NSMutableAttributedString *)setStringColor:(UIColor *)color range:(NSRange)range
{
    NSDictionary *attrDic = @{NSForegroundColorAttributeName:color};
    return [self setStringAttributes:attrDic range:range];
}

- (NSMutableAttributedString *)setStringStrokeColor:(UIColor *)color
                                              width:(CGFloat)width
                                              range:(NSRange)range
{
    NSDictionary *attrDic = @{NSStrokeColorAttributeName:color,
                              NSStrokeWidthAttributeName:@(width)};
    return [self setStringAttributes:attrDic range:range];
}


- (NSMutableAttributedString *)setStringSpace:(CGFloat)space range:(NSRange)range
{
    NSDictionary *attrDic = @{NSKernAttributeName:@(space)};
    return [self setStringAttributes:attrDic range:range];
}

- (NSMutableAttributedString *)setStringGradient:(CGFloat)gradient
                                           range:(NSRange)range
{
    NSDictionary *attrDic = @{NSObliquenessAttributeName:@(gradient)};
    return [self setStringAttributes:attrDic range:range];
}

- (NSMutableAttributedString *)setStringExpansion:(CGFloat)expansion
                                            range:(NSRange)range
{
    NSDictionary *attrDic = @{NSExpansionAttributeName:@(expansion)};
    return [self setStringAttributes:attrDic range:range];
}

- (NSMutableAttributedString *)setStringBaselineOffset:(CGFloat)offset
                                                 range:(NSRange)range
{
    NSDictionary *attrDic = @{NSBaselineOffsetAttributeName:@(offset)};
    return [self setStringAttributes:attrDic range:range];
}

- (NSMutableAttributedString *)setStringShadowOffset:(CGSize)offset
                                        shadowRadius:(CGFloat)radius
                                               color:(UIColor *)color range:(NSRange)range
{
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowOffset = offset;
    shadow.shadowBlurRadius = radius;
    shadow.shadowColor = color;
    NSDictionary *attrDic = @{NSShadowAttributeName:shadow};
    return [self setStringAttributes:attrDic range:range];
}


- (NSMutableAttributedString *)setStringUnderline:(NSUnderlineStyle)style
                                            color:(UIColor *)color
                                            range:(NSRange)range
{
    NSDictionary *attrDic = @{NSUnderlineStyleAttributeName:@(style),
                              NSUnderlineColorAttributeName:color};
    return [self setStringAttributes:attrDic range:range];
}

- (NSMutableAttributedString *)setStringDeleteline:(NSUnderlineStyle)style
                                             color:(UIColor *)color
                                             range:(NSRange)range
{
    NSDictionary *attrDic = @{NSStrikethroughStyleAttributeName:@(style),
                              NSStrikethroughColorAttributeName:color};
    return [self setStringAttributes:attrDic range:range];
}

- (NSMutableAttributedString *)setStringWithImage:(NSString *)imageName bounds:(CGRect)bounds index:(NSInteger)index
{
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:self];
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = [UIImage imageNamed:imageName];
    attachment.bounds = bounds;
    NSAttributedString *attachmentStr = [NSAttributedString attributedStringWithAttachment:attachment];
    [attrString insertAttributedString:attachmentStr atIndex:index];
    return attrString;
}

- (NSMutableAttributedString *)setStringAttributes:(NSDictionary<NSString *, id>*)attributeDictionary range:(NSRange)range
{
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:self];
    [attrString addAttributes:attributeDictionary range:range];
    return attrString;
}

@end
