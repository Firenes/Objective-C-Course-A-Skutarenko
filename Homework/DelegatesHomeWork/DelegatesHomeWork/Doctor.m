//
//  Doctor.m
//  DelegatesHomeWork
//
//  Created by Nikita Shumilin on 11/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.countHead = 0;
        self.countHands = 0;
        self.countStomach = 0;
        self.countAss = 0;
        self.countLegs = 0;
    }
    return self;
}

- (void)report {
    NSLog(@"Today I heal %ld heads", self.countHead);
    NSLog(@"Today I heal %ld hands", self.countHead);
    NSLog(@"Today I heal %ld stomach", self.countHead);
    NSLog(@"Today I heal %ld ass", self.countHead);
    NSLog(@"Today I heal %ld legs", self.countHead);
}

#pragma mark - PatientDelegate

- (void) patientFeelsBad: (Patient *) patient withPartOfBody: (BodyPart) bodyPart {
    NSLog(@"Patient %@ feels bad.", patient.name);
    
    switch (bodyPart) {
        case BodyPartHead:
            self.countHead += 1;
            
            if ((patient.temperature > 37.f && patient.temperature < 39.f) || patient.isHeadache == 1) {
                [patient takePill];
            } else if (patient.temperature > 39.f && patient.isHeadache == 1) {
                [patient makeShot];
            } else {
                NSLog(@"Patient %@ should have a rest.", patient.name);
            }
            
            break;
        case BodyPartHands:
            self.countHands += 1;
            
            [patient makeShot];
            break;
        case BodyPartStomach:
            self.countStomach += 1;
            
            [patient takePill];
            break;
        case BodyPartAss:
            self.countAss += 1;
            
            if ((patient.temperature > 37.f && patient.temperature < 39.f) || patient.isAssache == 1) {
                [patient takePill];
            } else if (patient.temperature > 39.f && patient.isAssache == 1) {
                [patient makeShot];
            } else {
                NSLog(@"Patient %@ should have a rest.", patient.name);
            }
            break;
        case BodyPartLegs:
            self.countLegs += 1;
            
            [patient makeShot];
            break;
        default:
            NSLog(@"You're body is healthy.");
            break;
    }
    
//    if ((patient.temperature > 37.f && patient.temperature < 39.f) || (patient.isAssache == 1 && patient.isHeadache == 0)) {
//        [patient takePill];
//    } else if (patient.temperature > 39.f && (patient.isHeadache == 1 || patient.isAssache == 1)) {
//        [patient makeShot];
//    } else {
//        NSLog(@"Patient %@ should have a rest.", patient.name);
//    }
}

@end
