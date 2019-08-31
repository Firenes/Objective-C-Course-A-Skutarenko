//
//  BasketballPlayer.h
//  ArraysHomeWork
//
//  Created by Nikita Shumilin on 24/07/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Human.h"

NS_ASSUME_NONNULL_BEGIN

@interface BasketballPlayer : Human

@property (strong, nonatomic) NSString *playingHand;
@property (assign, nonatomic) CGFloat speed;

- (void) superMove;

@end

NS_ASSUME_NONNULL_END
