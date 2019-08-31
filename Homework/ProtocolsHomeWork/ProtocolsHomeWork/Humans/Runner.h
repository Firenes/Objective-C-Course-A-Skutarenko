//
//  Runner.h
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Human.h"
#import "Runners.h"

NS_ASSUME_NONNULL_BEGIN

@interface Runner : Human <Runners>

#pragma mark - Runners
@property (assign, nonatomic) CGFloat maxSpeed;

@end

NS_ASSUME_NONNULL_END
