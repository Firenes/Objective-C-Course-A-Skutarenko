//
//  Human.m
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Human.h"

@implementation Human

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Default";
        self.weight = 0.5f;
        self.height = 50.0f;
        self.gender = GenderMale;
    }
    return self;
}

- (NSString *)description
{
    NSString *displayDescript;
    
    displayDescript = [NSString stringWithFormat:@"Human name is %@. Human's weight is %f. Human's height is %f. Human's gender is %@.", self.name, self.weight, self.height, self.gender ? @"Female": @"Male"];
    return displayDescript;
}

@end
