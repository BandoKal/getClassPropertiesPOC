//
//  ViewController.m
//  BlargObjects
//
//  Created by Jason Bandy on 8/18/15.
//  Copyright (c) 2015 Asurion LLC. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "MySubObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view,  typically from a nib.
    
    MySuperObject *blarg = [[MySuperObject alloc]init];
    blarg.mySuperName = @"Heya";
    
    MySubObject *subBlarg = [[MySubObject alloc]init];
    subBlarg.mySuperName = @"HEYO";
    subBlarg.mySubName = @"heyo";
    
    NSArray *props = [blarg toArray];
    NSArray *subProps = [subBlarg toArray];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}



@end
