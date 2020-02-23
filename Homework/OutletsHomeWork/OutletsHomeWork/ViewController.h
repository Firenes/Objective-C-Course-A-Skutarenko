//
//  ViewController.h
//  OutletsHomeWork
//
//  Created by Nikita Shumilin on 23.02.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *chessdeskView;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *whiteViews;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *blackViews;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *yellowCheckers;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *blueCheckers;


@end

