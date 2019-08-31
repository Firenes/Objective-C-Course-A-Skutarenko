//
//  Human.m
//  ArraysHomeWork
//
//  Created by Nikita Shumilin on 23/07/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Human.h"

@implementation Human

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Name";
        self.height = 50;
        self.weight = 0.5f;
        self.sex = SexMale;
    }
    return self;
}

- (NSString*) description {
    
    NSString *tempString = _sex ? @"female": @"male";
    
    tempString = [NSString stringWithFormat:@"Name is %@. Height is %ld. Weight is %.2f. Sex is %@", _name, _height, _weight, tempString];
    
    return tempString;
}

- (void) move {
    NSLog(@"Move!");
}

@end
