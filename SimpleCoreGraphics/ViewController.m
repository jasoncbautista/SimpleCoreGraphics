//
//  ViewController.m
//  SimpleCoreGraphics
//
//  Created by Json on 7/11/15.
//  Copyright (c) 2015 BLD. All rights reserved.
//

#import "ViewController.h"
#import "Rectangler.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
    NSLog(@"Loading... =-)");
    
    
    Rectangler * rectangler = [[Rectangler alloc] initWithFrame: CGRectMake(0, 0, 320, 480) ];
    
    [self.view addSubview: rectangler];
    */
    
    /*
    NSURL *url = [NSURL URLWithString: @"http://lorempixel.com/200/200/"];
    NSData *data = [NSData dataWithContentsOfURL: url];
    
    UIImage *img = [[UIImage alloc] initWithData: data];
    
    CGSize size = img.size;
    
    UIImage *iv = [[UIImageView alloc] initWithImage: img];
    
    [self.view addSubview: iv];
     */
    
    NSURL *url = [NSURL URLWithString: @"http://lorempixel.com/400/400/"];

    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
        if([data length] > 0 && error == nil && [httpResponse statusCode] == 200  ){
            
            UIImage *img = [[UIImage alloc] initWithData: data];
            
            CGSize size = img.size;
            
            UIImage *iv = [[UIImageView alloc] initWithImage: img];
            
            [self.view addSubview: iv];
            
        } else {
           NSLog(@"Error ");
            
        
        }
        
        
    }];
    
    
    
    /*
    UIImage * img = [UIImage imageNamed: @"lilpet001.png"];
    UIImageView *iv = [[UIImageView alloc] initWithImage: img];
    
    iv.frame = CGRectMake(100, 50, iv.frame.size.width/ 2, iv.frame.size.height/2);
    
    [self.view addSubview: iv];
   // lilpet001
    */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
