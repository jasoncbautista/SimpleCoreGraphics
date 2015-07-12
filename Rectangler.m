//
//  Rectangler.m
//  SimpleCoreGraphics
//
//  Created by Json on 7/11/15.
//  Copyright (c) 2015 BLD. All rights reserved.
//

#import "Rectangler.h"

@implementation Rectangler

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context  = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    
    CGContextFillRect(context, CGRectMake(40,40, 100,200));
    
}

@end
