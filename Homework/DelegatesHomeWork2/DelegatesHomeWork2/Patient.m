//
//  Patient.m
//  DelegatesHomeWork2
//
//  Created by Nikita Shumilin on 12/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.patientName = @"Patient";
        self.temperature = 36.6f;
        self.isStomachache = arc4random() % 2;
        self.isGoodDoctor = NO;
    }
    return self;
}

- (BOOL) feelsWorst {
    BOOL feeelGood = arc4random() % 2;
    
    if (!feeelGood) {
        [self.delegate patientFeelsBad:self withSickBodyPart:arc4random() % 4];
    }
    
    return feeelGood;
}

- (void) takePill {
    NSLog(@"Patient %@ takes a pill", self.patientName);
}

- (void) makeShot {
    NSLog(@"Patient %@ makes a shot", self.patientName);
}

- (void) toSetAPlasterCast {
    NSLog(@"Patient %@ sets a plaster cast", self.patientName);
}

- (void) getThermometerInAnus {
    NSLog(@"Patient %@ get thermometer in the anus", self.patientName);
}

- (void) takeADelicacy {
    NSLog(@"Patient %@ takes a delicacy", self.patientName);
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Patient %@ has temperature %.2f. Also %@. Patient is %@", self.patientName, self.temperature, self.isStomachache ? @"has stomachache" : @"hasn't stomachache", [self feelsWorst] ? @"OK": @"not OK"];
}

@end
