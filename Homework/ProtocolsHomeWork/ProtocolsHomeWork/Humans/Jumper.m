//
//  Jumper.m
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Jumper.h"

@implementation Jumper

#pragma mark - Jumpers

- (NSString*) scatter {
    return [NSString stringWithFormat:@"Jumper %@ is scattering", self.name];
}

- (NSString*) jump {
    return [NSString stringWithFormat:@"Jumper %@ is jumping", self.name];
}

- (NSString*) fly {
    return [NSString stringWithFormat:@"Oh look! Is jumper %@ is flying?", self.name];
}

@end
