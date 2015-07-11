//
//  ViewController.m
//  SimpleCoreGraphics
//
//  Created by Json on 7/11/15.
//  Copyright (c) 2015 BLD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"Loading... =-)");
    
    UIImage * img = [UIImage imageNamed: @"lilpet001.png"];
    UIImageView *iv = [[UIImageView alloc] initWithImage: img];
    
    [self.view addSubview: iv];
   // lilpet001
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
