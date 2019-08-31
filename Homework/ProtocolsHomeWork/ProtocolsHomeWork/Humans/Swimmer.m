//
//  Swimmer.m
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Swimmer.h"

@implementation Swimmer

#pragma mark - Swimmers
- (NSString*) dive {
    return [NSString stringWithFormat:@"Swimmer %@ is diving", self.name];
}

- (NSString*) swim {
    return [NSString stringWithFormat:@"Swimmer %@ is swimming", self.name];
}

- (NSString*) doSomeBubbles {
    return [NSString stringWithFormat:@"Swimmer %@ is so stupid that he is blowing bubbles", self.name];
}

@end
