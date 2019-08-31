//
//  Animals.m
//  ArraysHomeWork
//
//  Created by Nikita Shumilin on 26/07/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Animals.h"

@implementation Animals

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.animalClass = @"Animal";
        self.animalName = @"AnimalName";
        self.isDomestic = NO;
        self.howManyLegs = 4;
    }
    return self;
}

- (NSString *)description
{
    NSString *tempDomestic = self.isDomestic ? @"YES" : @"NO";
    
    return [NSString stringWithFormat:@"Animal class: %@. Animal's name: %@. Domestic: %@. Legs: %ld.", self.animalClass, self.animalName, tempDomestic, self.howManyLegs];
}

- (void) animalMove {
    NSLog(@"Animal move!");
}

@end
