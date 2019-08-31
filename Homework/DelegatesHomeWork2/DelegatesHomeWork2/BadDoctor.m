//
//  BadDoctor.m
//  DelegatesHomeWork2
//
//  Created by Nikita Shumilin on 12/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "BadDoctor.h"

@implementation BadDoctor

- (void) patientFeelsBad:(Patient *) patient withSickBodyPart:(BodyPart) sickBodyPart {
    NSLog(@" ");
    NSLog(@"Patient %@ feels bad", patient.patientName);
    
    if (((patient.temperature > 37.f && patient.temperature <= 39.f) || patient.isStomachache == 1)) {
        [patient toSetAPlasterCast];
    } else if (patient.temperature > 39.f) {
        [patient getThermometerInAnus];
    } else {
        NSLog(@"Why did you come to me if you're healthy?");
    }
}

@end
