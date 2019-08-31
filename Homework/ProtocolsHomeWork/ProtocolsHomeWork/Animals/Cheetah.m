//
//  Cheetah.m
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Cheetah.h"

@implementation Cheetah

#pragma mark - Jumpers

- (NSString*) scatter {
    return [NSString stringWithFormat:@"Cheetah %@ is scattering", self.animalName];
}

- (NSString*) jump {
    return [NSString stringWithFormat:@"Cheetah %@ is jumping", self.animalName];
}

#pragma mark - Runners

- (NSString*) start {
    return [NSString stringWithFormat:@"Cheetah %@ is starting to run", self.animalName];
}

- (NSString*) run {
    return [NSString stringWithFormat:@"Cheetah %@ is running", self.animalName];
}

- (NSString*) stop {
    return [NSString stringWithFormat:@"Cheetah %@ is stopping to run", self.animalName];
}

@end
