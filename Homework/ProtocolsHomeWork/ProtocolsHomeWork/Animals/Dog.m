//
//  Dog.m
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Dog.h"

@implementation Dog

#pragma mark - Jumpers

- (NSString*) scatter {
    return [NSString stringWithFormat:@"Doggy %@ is scattering", self.animalName];
}

- (NSString*) jump {
    return [NSString stringWithFormat:@"Doggy %@ is jumping", self.animalName];
}

#pragma mark - Swimmers
- (NSString*) dive {
    return [NSString stringWithFormat:@"Doggy %@ is diving", self.animalName];
}

- (NSString*) swim {
    return [NSString stringWithFormat:@"Doggy %@ is swimming", self.animalName];
}

#pragma mark - Runners

- (NSString*) start {
    return [NSString stringWithFormat:@"Doggy %@ is starting to run", self.animalName];
}

- (NSString*) run {
    return [NSString stringWithFormat:@"Doggy %@ is running", self.animalName];
}

- (NSString*) stop {
    return [NSString stringWithFormat:@"Doggy %@ is stopping to run", self.animalName];
}

- (NSString*) sendHello {
    return [NSString stringWithFormat:@"Oh, hi, doggy!"];
}

@end
