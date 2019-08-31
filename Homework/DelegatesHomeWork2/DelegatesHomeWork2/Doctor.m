//
//  Doctor.m
//  DelegatesHomeWork2
//
//  Created by Nikita Shumilin on 12/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.countHeads = 0;
        self.countHands = 0;
        self.countAss = 0;
        self.countLegs = 0;
    }
    return self;
}

- (void) report {
    NSLog(@"Doctor %@ has healed %ld heads", self.name, self.countHeads);
    NSLog(@"Doctor %@ has healed %ld hands", self.name, self.countHands);
    NSLog(@"Doctor %@ has healed %ld ass", self.name, self.countAss);
    NSLog(@"Doctor %@ has healed %ld legs", self.name, self.countLegs);
}


#pragma mark - PatientDelegate

- (void) patientFeelsBad:(Patient *) patient withSickBodyPart:(BodyPart) sickBodyPart {
    NSLog(@" ");
    NSLog(@"Patient %@ feels bad", patient.patientName);
    
    switch (sickBodyPart) {
        case BodyPartHead:
            self.countHeads += 1;
            break;
        case BodyPartHands:
            self.countHands += 1;
            break;
        case BodyPartAss:
            self.countAss += 1;
            break;
        case BodyPartLegs:
            self.countLegs += 1;
            break;
        default:
            break;
    }
    
    if (((patient.temperature > 37.f && patient.temperature <= 39.f) || patient.isStomachache == 1)) {
        [patient takePill];
    } else if (patient.temperature > 39.f) {
        [patient makeShot];
    } else {
        NSLog(@"You're well, just have a rest.");
        [patient takeADelicacy];
    }
}

@end
