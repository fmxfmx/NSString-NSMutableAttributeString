# NSString-NSMutableAttributeString
简单的NSMutableAttributeString设置分类有如下方法:
```objective-c
/**
 设置字体背景颜色

 @param color 背景颜色值
 @param range 区间(NSMakeRange(从0开始的数,从1开始数))
 @return NSMutableAttributedString
 */
- (NSMutableAttributedString *)setStringBackgroundColor:(UIColor *)color
                                                  range:(NSRange)range;

/**
 设置字体类型

 @param font 字体对象
 @param range 区间
 @return NSMutableAttributedString
 */
- (NSMutableAttributedString *)setStringFont:(UIFont *)font range:(NSRange)range;

/**
 设置字体颜色

 @param color 字体颜色值
 @param range 区间
 @return NSMutableAttributedString
 */
- (NSMutableAttributedString *)setStringColor:(UIColor *)color
                                            range:(NSRange)range;

/**
 设置字体空心

 @param color 字体空心颜色值
 @param width 字体空心间距
 @param range 区间
 @return NSMutableAttributedString
 */
- (NSMutableAttributedString *)setStringStrokeColor:(UIColor *)color
                                              width:(CGFloat)width
                                              range:(NSRange)range;


/**
 设置字体间的间距

 @param space 距离
 @param range 区间
 @return NSMutableAttributedString
 */
- (NSMutableAttributedString *)setStringSpace:(CGFloat)space range:(NSRange)range;

/**
 设置字体的倾斜

 @param gradient 倾斜度(正:右,负:左)
 @param range 区间
 @return NSMutableAttributedString
 */
- (NSMutableAttributedString *)setStringGradient:(CGFloat)gradient
                                           range:(NSRange)range;

/**
 设置字体的拉伸,压缩

 @param expansion 拉伸/压缩值(正:横向拉伸,负:横向压缩)
 @param range 区间
 @return NSMutableAttributedString
 */
- (NSMutableAttributedString *)setStringExpansion:(CGFloat)expansion
                                            range:(NSRange)range;

/**
 设置字体的基线偏移

 @param offset 偏移值(正:上,负:下)
 @param range 区间
 @return NSMutableAttributedString
 */
- (NSMutableAttributedString *)setStringBaselineOffset:(CGFloat)offset
                                                 range:(NSRange)range;

/**
 设置字体的阴影

 @param offset 阴影偏移量
 @param radius 模糊半径
 @param color 阴影半径
 @return NSMutableAttributedString
 */
- (NSMutableAttributedString *)setStringShadowOffset:(CGSize)offset
                                        shadowRadius:(CGFloat)radius
                                               color:(UIColor *)color
                                               range:(NSRange)range;

/**
 设置字体的下划线

 @param style 下划线类型(NSUnderlineStyle枚举)
 @param color 下划线颜色
 @param range 区间
 @return NSMutableAttributedString
 */
- (NSMutableAttributedString *)setStringUnderline:(NSUnderlineStyle)style
                                            color:(UIColor *)color
                                            range:(NSRange)range;

/**
 设置字体删除线

 @param style 删除线类型(NSUnderlineStyle枚举)
 @param color 删除线颜色
 @param range 区间
 @return NSMutableAttributedString
 */
- (NSMutableAttributedString *)setStringDeleteline:(NSUnderlineStyle)style
                                             color:(UIColor *)color
                                             range:(NSRange)range;

/**
 在字体中加图片

 @param imageName 需要加的图片的名字
 @param bounds 图片位置大小
 @param index 图片加载的位置
 @return NSMutableAttributedString
 */
- (NSMutableAttributedString *)setStringWithImage:(NSString *)imageName
                                           bounds:(CGRect)bounds
                                            index:(NSInteger)index;
```
