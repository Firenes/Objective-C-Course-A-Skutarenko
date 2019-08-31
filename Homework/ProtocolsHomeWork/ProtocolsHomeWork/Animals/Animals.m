//
//  Animals.m
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Animals.h"

@implementation Animals

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.animalClass = @"Default";
        self.animalName = @"Default";
        self.isDomestic = NO;
        self.howManyLegs = 4;
    }
    return self;
}

- (NSString *)description
{
    NSString *displayDescript;
    
    displayDescript = [NSString stringWithFormat:@"Animal's class is %@. Animal's name %@. Animal is %@. Animal has %ld legs.", self.animalClass, self.animalName, self.isDomestic ? @"domestic": @"wild", self.howManyLegs];
    
    return displayDescript;
}

@end
