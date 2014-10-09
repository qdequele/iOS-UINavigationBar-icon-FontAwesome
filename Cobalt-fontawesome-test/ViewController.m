//
//  ViewController.m
//  Cobalt-fontawesome-test
//
//  Created by Quentin deQuelen on 09/10/2014.
//  Copyright (c) 2014 Haploid. All rights reserved.
//
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize label;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.navigationController.navigationBar setTintColor:[UIColor blackColor]];
    
    [self.navigationItem setTitle:[NSString stringWithFormat:@"Yeah cobalt !!!"]];
    
    UIImage *icon = [UIImage imageWithIcon:@"fa-bars" backgroundColor:[UIColor clearColor] iconColor:[UIColor whiteColor] iconScale:[[UIScreen mainScreen] scale] andSize:CGSizeMake(26, 26)];
    UIBarButtonItem *leftBarButton = [[UIBarButtonItem alloc] initWithImage:icon style:UIBarButtonItemStylePlain target:nil action:nil];
    [self.navigationItem setLeftBarButtonItem:leftBarButton];
    
    icon = [UIImage imageWithIcon:@"fa-cog" backgroundColor:[UIColor clearColor] iconColor:[UIColor whiteColor] iconScale:[[UIScreen mainScreen] scale] andSize:CGSizeMake(26, 26)];
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithImage:icon style:UIBarButtonItemStylePlain target:nil action:nil];
    [self.navigationItem setRightBarButtonItem:rightBarButton];

//    [fontawesomeButton setTitleTextAttributes:
//     [NSDictionary dictionaryWithObjectsAndKeys:
//      [UIFont fontWithName:@"FontAwesome" size:20.0],
//      [NSString fontAwesomeIconStringForIconIdentifier:@"fa-github"],
//      nil]
//        forState:UIControlStateNormal];
    
    
    label.font = [UIFont fontWithName:kFontAwesomeFamilyName size:30];
    label.text = [NSString fontAwesomeIconStringForIconIdentifier:@"fa-github"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
