//
//  Patient.m
//  DelegatesTest
//
//  Created by Nikita Shumilin on 11/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (BOOL) howAreYou {
    
    BOOL iFeelGood = arc4random() % 2;
    
    if (!iFeelGood) {
        [self.delegate patientFeelsBad:self];
    }
    
    return iFeelGood;
}

- (void) takePill {
    NSLog(@"%@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"%@ makes a shot", self.name);
}

@end
