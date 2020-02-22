//
//  ViewController.h
//  OutletsTest
//
//  Created by Nikita Shumilin on 22.02.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *testViews;

//@property (weak, nonatomic) IBOutlet UIView *testView;

@end

