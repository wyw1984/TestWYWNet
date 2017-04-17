//
//  ViewController.m
//  TestWYWNet
//
//  Created by yanwu wei on 2017/4/17.
//  Copyright © 2017年 Ivan. All rights reserved.
//

#import "ViewController.h"
#import "NetManager1.h"
#import "NetManager2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [NetManager1 MediaListByType:0 startPos:1 success:^(id json) {
        
        NSLog(@"%@",json);
    } failure:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
    [NetManager2 MediaListByType:1 startPos:1 success:^(id json) {
        
        NSLog(@"%@",json);
    } failure:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
