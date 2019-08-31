//
//  Swimmer.h
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Human.h"
#import "Swimmers.h"

NS_ASSUME_NONNULL_BEGIN

@interface Swimmer : Human <Swimmers>

#pragma mark - Swimmers
@property (assign, nonatomic) CGFloat maxDistance;

@end

NS_ASSUME_NONNULL_END
