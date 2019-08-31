//
//  Runner.m
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Runner.h"

@implementation Runner

#pragma mark - Runners

- (NSString*) start {
    return [NSString stringWithFormat:@"Runner %@ is starting to run", self.name];
}

- (NSString*) run {
    return [NSString stringWithFormat:@"Runner %@ is running", self.name];
}

- (NSString*) stop {
    return [NSString stringWithFormat:@"Runner %@ is stopping to run", self.name];
}

- (NSString*) sendHello {
    return [NSString stringWithFormat:@"Runner %@ is sending 'Hello' while he is running", self.name];
}

@end
