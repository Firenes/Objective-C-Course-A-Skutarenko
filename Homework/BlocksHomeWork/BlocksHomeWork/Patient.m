//
//  Patient.m
//  BlocksHomeWork
//
//  Created by Nikita Shumilin on 19/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Patient.h"


@implementation Patient

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.firstName = @"firstName";
        self.temperature = (arc4random() % 30) * 0.1 + 36.6;
        
        [self performSelector:@selector(feelsWorse) withObject:nil afterDelay:(arc4random() % 4 + 3)];
    }
    return self;
}

- (void) feelsWorse {
    NSLog(@"Patient %@ has temperature %.1f", self.firstName, self.temperature);
    self.patientBlock();
}

- (void) takePill {
    NSLog(@"%@ takes a pill", self.firstName);
}

- (void) makeShot {
    NSLog(@"%@ makes a shot", self.firstName);
}

@end
