//
//  ViewController.m
//  AnimationsTest
//
//  Created by Nikita Shumilin on 27.02.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) UIView *testView;
@property (weak, nonatomic) UIImageView *testImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
//    view.backgroundColor = [UIColor blueColor];
//
//    [self.view addSubview:view];
//
//    self.testView = view;
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    imageView.backgroundColor = [UIColor blueColor];
    
    // Uncomment for image animation
//    UIImage *image1 = [UIImage imageNamed:@"Im1.png"];
//    UIImage *image2 = [UIImage imageNamed:@"Im2.png"];
//    UIImage *image3 = [UIImage imageNamed:@"Im3.png"];
    
//    NSArray *images = [NSArray arrayWithObjects:image1, image2, image3, image2, nil];
//
//    imageView.animationImages = images;
//    imageView.animationDuration = 1;
//
//    [imageView startAnimating];
    [self.view addSubview:imageView];
    
    self.testImageView = imageView;
}

- (UIColor *) randomColor {
    CGFloat r = (CGFloat)(arc4random() % 256) / 255.f;
    CGFloat g = (CGFloat)(arc4random() % 256) / 255.f;
    CGFloat b = (CGFloat)(arc4random() % 256) / 255.f;
    return [UIColor colorWithRed:r green:g blue:b alpha:1.f];
}

- (void) moveView: (UIView *) view {
    
    CGRect rect = self.view.frame;
    
    rect = CGRectInset(rect, CGRectGetWidth(view.frame), CGRectGetHeight(view.frame));
    
    CGFloat x = arc4random() % (int)(self.view.frame.size.width - view.frame.size.width); //((int)CGRectGetWidth(rect) - CGRectGetWidth(view.frame.size));
    CGFloat y = arc4random() % (int)(self.view.frame.size.height - view.frame.size.height); //((int)CGRectGetHeight(rect) - CGRectGetHeight(view.bounds));
    
    // Alexey's variant doesn't work
//    CGFloat x = (int)(arc4random() % (int)CGRectGetWidth(rect) + CGRectGetMinX(rect));
//    CGFloat y = (int)(arc4random() % (int)CGRectGetHeight(rect) + CGRectGetMinY(rect));
    
    CGFloat s = (float)(arc4random() % 151) / 100.f + 0.5f;
    
    CGFloat r = (float)(arc4random() % (int)(M_PI * 2 * 10000)) / 10000 - M_PI;
    
    CGFloat d = (float)(arc4random() % 20001) / 10000 + 2;
    
    [UIView animateWithDuration:d
                          delay:0
                        options:UIViewAnimationOptionCurveLinear //UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
                     animations:^{
//        view.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(view.frame) / 2, 200);
        view.center = CGPointMake(x, y);
        view.backgroundColor = [self randomColor];
        
        CGAffineTransform scale = CGAffineTransformMakeScale(s, s);
        CGAffineTransform rotation = CGAffineTransformMakeRotation(r);
        
        CGAffineTransform transform = CGAffineTransformConcat(scale, rotation);
        
        view.transform = transform;
        
//        view.transform = CGAffineTransformMakeRotation(M_PI);
        // works same like a make point for center
//        view.transform = CGAffineTransformMakeTranslation(300, 0);
            
        // same point like from center
//        view.transform = CGAffineTransformMakeTranslation(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(view.frame) - CGRectGetWidth(view.frame) / 2, 200);
            
//        self.testView.transform = CGAffineTransformMakeScale(2, 0.5);
            
//        CGAffineTransform scale = CGAffineTransformMakeScale(2, 0.5);
//        CGAffineTransform rotation = CGAffineTransformMakeRotation(M_PI);
            
//        CGAffineTransform transform = CGAffineTransformConcat(scale, rotation);
            
//        view.transform = transform;
                    }
                     completion:^(BOOL finished) {
        NSLog(@"First animation finished %d", finished);
        NSLog(@"\nview's frame = %@\nview's bounds = %@", NSStringFromCGRect(view.frame), NSStringFromCGRect(view.bounds));
        
        __weak UIView *v = view;
        [self moveView:v];
    }];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    /*
    [UIView animateWithDuration:5
                     animations:^{
                        self.testView.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.testView.frame) / 2, 200);
                    }];
    
    [UIView animateWithDuration:10
                          delay:1
                        options:UIViewAnimationOptionCurveEaseInOut //| UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
                     animations:^{
                                    self.testView.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.testView.frame) / 2, 200);
                                }
                     completion:^(BOOL finished) {
        NSLog(@"First animation finished %d", finished);
    }];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(6 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CALayer *presLayer = (CALayer *) self.testView.layer.presentationLayer;
        self.testView.layer.position = [presLayer position];
        [self.testView.layer removeAllAnimations];

        [UIView animateWithDuration:4
                              delay:0
                            options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionBeginFromCurrentState
                         animations:^{
                            self.testView.center = CGPointMake(100, 400);
                        }
                         completion:^(BOOL finished) {
            NSLog(@"Second animation finished %d", finished);
        }];
    });
    */
    
//    [self moveView:self.testView];
    [self moveView:self.testImageView];
}

@end
