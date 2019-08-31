//
//  HomeClass.m
//  TypesHomeWork
//
//  Created by Nikita Shumilin on 02/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "HomeClass.h"

@implementation HomeClass

- (NSString *) targetToString:(Combat) stringTarget {
    NSString *result = nil;
    
    switch (stringTarget) {
        case CombatShoot:
            result = @"Shoot!";
            break;
        case CombatMiss:
            result = @"Miss!";
            break;
        default:
            [NSException raise:NSGenericException format:@"You do something wrong!"];
    }
    
    return result;
}

@end
