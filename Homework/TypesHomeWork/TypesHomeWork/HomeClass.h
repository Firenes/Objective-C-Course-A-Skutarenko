//
//  HomeClass.h
//  TypesHomeWork
//
//  Created by Nikita Shumilin on 02/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    
    CombatShoot,
    CombatMiss
    
} Combat;

@interface HomeClass : NSObject

@property (assign, nonatomic) Combat target;

- (NSString *) targetToString:(Combat) stringTarget;

@end

NS_ASSUME_NONNULL_END
