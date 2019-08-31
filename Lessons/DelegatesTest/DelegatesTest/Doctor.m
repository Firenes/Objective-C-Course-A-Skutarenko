//
//  Doctor.m
//  DelegatesTest
//
//  Created by Nikita Shumilin on 11/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor


#pragma mark - PatientDelegate

- (void) patientFeelsBad: (Patient *) patient {
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if (patient.temperature > 37.f && patient.temperature <= 39.f) {
        [patient takePill];
    } else if (patient.temperature > 39.f) {
        [patient makeShot];
    } else {
        NSLog(@"Patient %@ should have a rest", patient.name);
    }
}

- (void) patient:(Patient *) patient hasQuestion:(NSString *) question {
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}

@end
