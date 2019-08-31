//
//  Pioneer.h
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Human.h"
#import "Jumpers.h"
#import "Swimmers.h"
#import "Runners.h"

NS_ASSUME_NONNULL_BEGIN

@interface Pioneer : Human <Jumpers, Swimmers, Runners>

#pragma mark - Jumpers

@property (assign, nonatomic) CGFloat maxJump;

#pragma mark - Swimmers

@property (assign, nonatomic) CGFloat maxDistance;

#pragma mark - Runners

@property (assign, nonatomic) CGFloat maxSpeed;

@end

NS_ASSUME_NONNULL_END
