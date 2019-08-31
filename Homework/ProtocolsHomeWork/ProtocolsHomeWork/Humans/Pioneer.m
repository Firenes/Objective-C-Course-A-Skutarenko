//
//  Pioneer.m
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Pioneer.h"

@implementation Pioneer

#pragma mark - Jumpers

- (NSString*) scatter {
    return [NSString stringWithFormat:@"Pioneer %@ is scattering", self.name];
}

- (NSString*) jump {
    return [NSString stringWithFormat:@"Pioneer %@ is jumping", self.name];
}

- (NSString*) fly {
    return [NSString stringWithFormat:@"Although the pioneer %@ is perfect, he cannot fly", self.name];
}

#pragma mark - Swimmers
- (NSString*) dive {
    return [NSString stringWithFormat:@"Pioneer %@ is diving", self.name];
}

- (NSString*) swim {
    return [NSString stringWithFormat:@"Pioneer %@ is swimming", self.name];
}

#pragma mark - Runners

- (NSString*) start {
    return [NSString stringWithFormat:@"Pioneer %@ is starting to run", self.name];
}

- (NSString*) run {
    return [NSString stringWithFormat:@"Pioneer %@ is running", self.name];
}

- (NSString*) stop {
    return [NSString stringWithFormat:@"Pioneer %@ is stopping to run", self.name];
}

- (NSString*) sendHello {
    return [NSString stringWithFormat:@"Pioneer %@ is sending 'Hello' while he is running", self.name];
}

@end
