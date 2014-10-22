//
//  ViewController.m
//  TestPan1
//
//  Created by Forrest on 10/22/14.
//  Copyright (c) 2014 Forrest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){

    UIView *redCircle;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    redCircle = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    redCircle.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:redCircle];
    
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(onPan:)];
    //[redCircle addGestureRecognizer:panGesture];
    
    [self.view addGestureRecognizer:panGesture];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
}

- (void)onPan:(UIGestureRecognizer*)gesture{
    
    
    CGPoint curPos = [gesture locationInView:self.view];

    NSLog(@"cur pos %@", NSStringFromCGPoint(curPos));
    redCircle.center = curPos;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
