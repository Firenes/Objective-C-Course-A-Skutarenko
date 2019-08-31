//
//  Patient.m
//  DelegatesHomeWork
//
//  Created by Nikita Shumilin on 11/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Default";
        self.temperature = 36.6f;
        self.isHeadache = arc4random() % 2;
        self.isAssache = arc4random() % 2;
        self.isDoctorGood = NO;
    }
    return self;
}

- (BOOL) feelsWorst {
    BOOL iFeelGood = arc4random() % 2;
    
    if (!iFeelGood) {
        [self.delegate patientFeelsBad:self withPartOfBody:arc4random() % 5];
    }
    
    return iFeelGood;
}

// methods for human doctor

- (void) takePill {
    NSLog(@"Patient %@ takes a pill.", self.name);
}

- (void) makeShot {
    NSLog(@"Patient %@ makes a shot.", self.name);
}

// methods for pet doctor

- (void) getThermometerInAss {
    NSLog(@"Patient %@ gets the thermometer in the ass.", self.name);
}

- (void) takeDelicacy {
    NSLog(@"Patient %@ takes a delicacy.", self.name);
}

- (void) sayGoodBoy {
    NSLog(@"Pet doctor say to patient %@ that you a good boy.", self.name);
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ are you ok? %s.", self.name, [self feelsWorst] ? "Yes": "No"];
}

@end
