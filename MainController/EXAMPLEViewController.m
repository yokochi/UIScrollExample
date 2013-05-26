//
//  EXAMPLEViewController.m
//  MainController
//
//  Created by Akio Yamazaki on 2013/05/26.
//  Copyright (c) 2013年 Akio Yamazaki. All rights reserved.
//

#import "EXAMPLEViewController.h"

@interface EXAMPLEViewController ()

@end

@implementation EXAMPLEViewController

@synthesize scrollView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImageView* iv = [self createImageView:0 imageName:@"image1.jpeg"];
    [scrollView addSubview:iv];
    
    UIImageView* iv2 = [self createImageView:IMAGE_WIDTH imageName:@"image2.jpeg"];
    [scrollView addSubview:iv2];
    
    UIImageView* iv3 = [self createImageView:IMAGE_WIDTH*2 imageName:@"image3.jpeg"];
    [scrollView addSubview:iv3];

    scrollView.contentSize = CGSizeMake(IMAGE_WIDTH * 3, IMAGE_HEIGHT);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIImageView*)createImageView:(int)x imageName:(NSString*)name
{
    UIImage *_image = [UIImage imageNamed:name];
    UIImageView *iv = [[UIImageView alloc] initWithImage:_image];
    iv.contentMode = UIViewContentModeScaleAspectFill;
    CGRect rect = CGRectMake(x, 0, IMAGE_WIDTH, IMAGE_HEIGHT);
    iv.frame = rect;
    return iv;
}

@end
