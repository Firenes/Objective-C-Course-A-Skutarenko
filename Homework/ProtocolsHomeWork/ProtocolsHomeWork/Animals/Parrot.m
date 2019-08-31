//
//  Parrot.m
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Parrot.h"

@implementation Parrot

- (NSString*) scatter {
    return [NSString stringWithFormat:@"Parrot %@ usually don't scatter", self.animalName];
}

- (NSString*) jump {
    return [NSString stringWithFormat:@"Pioneer %@ is jumping when he want to move", self.animalName];
}

- (NSString*) fly {
    return [NSString stringWithFormat:@"It's a parrot! Of course he can fly!"];
}

@end
