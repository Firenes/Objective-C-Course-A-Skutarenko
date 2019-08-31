//
//  Cheetah.h
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Animals.h"
#import "Jumpers.h"
#import "Runners.h"

NS_ASSUME_NONNULL_BEGIN

@interface Cheetah : Animals <Jumpers, Runners>

#pragma mark - Jumpers
@property (assign, nonatomic) CGFloat maxJump;

#pragma mark - Runners
@property (assign, nonatomic) CGFloat maxSpeed;

@end

NS_ASSUME_NONNULL_END
