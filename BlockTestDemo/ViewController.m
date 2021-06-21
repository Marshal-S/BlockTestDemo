//
//  ViewController.m
//  BlockTestDemo
//
//  Created by Marshal on 2021/6/15.
//

#import "ViewController.h"

int global_a = 0;
static int static_b = 2;

@interface ViewController ()

@property NSString *name;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
//    int b = 2;
//    ViewController *vc = self;
//    void (^testBlock)(int a) = ^(int a) {
//        NSLog(@"%d", a+b);
//        vc.name = @"啦啦啦";
//    };
//    testBlock(20);
    
//    void (^testBlock)(void) = ^() {
//        global_a++;
//        static_b++;
//    };
//    testBlock();
    
    __block int b = 2;
    NSLog(@"b:%p", &b);
    __block ViewController *vc = self;
    void (^testBlock)(int a) = ^(int a) {
        NSLog(@"b:%p", &b);
        NSLog(@"%d", a+b);
        vc.name = @"啦啦啦";
    };
    testBlock(20);
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
