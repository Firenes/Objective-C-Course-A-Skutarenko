//
//  PetDoctor.m
//  DelegatesHomeWork
//
//  Created by Nikita Shumilin on 11/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "PetDoctor.h"

@implementation PetDoctor

- (void) patientFeelsBad: (Patient *) patient withPartOfBody: (BodyPart) bodyPart {
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if ((patient.temperature > 37.f && patient.temperature < 39.f) || patient.isAssache == 0 || patient.isHeadache == 0) {
        [patient takeDelicacy];
    } else if (patient.temperature > 39.f && (patient.isHeadache == 1 || patient.isAssache == 1)) {
        [patient getThermometerInAss];
    } else {
        [patient sayGoodBoy];
    }
}



@end
