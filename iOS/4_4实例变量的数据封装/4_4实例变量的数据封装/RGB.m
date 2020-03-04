//
//  RGB.m
//  4_4实例变量的数据封装
//
//  Created by wenhuanhuan on 2019/6/18.
//  Copyright © 2019 weiman. All rights reserved.
//

#import "RGB.h"
#import <stdio.h>

static unsigned char roundUChar(int v) {
    if (v < 0) return 0;
    if (v > 255) return 255;
    return  (unsigned char) v;
}

@implementation RGB

- (instancetype) initWithRed: (int) r green: (int) g blue: (int) b {
    self = [super init];
    if (self != nil) {
        red = roundUChar(r);
        green = roundUChar(g);
        blue = roundUChar(b);
    }
    return self;
}

- (id) blendColor: (RGB *) color {
    red = ((unsigned int)red + color->red) / 2;
    green = ((unsigned int)green + color->green) / 2;
    blue = ((unsigned int)blue + color->blue) / 2;
    return self;
}

- (void) print {
    printf("%d, %d, %d\n", red, green, blue);
}

@end
