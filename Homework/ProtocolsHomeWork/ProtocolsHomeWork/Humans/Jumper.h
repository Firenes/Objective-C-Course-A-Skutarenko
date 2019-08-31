//
//  Jumper.h
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Human.h"
#import "Jumpers.h"

NS_ASSUME_NONNULL_BEGIN

@interface Jumper : Human <Jumpers>

#pragma mark - Jumpers
@property (assign, nonatomic) CGFloat maxJump;

@end

NS_ASSUME_NONNULL_END
