//
//  Student.m
//  DictionaryHomeWork
//
//  Created by Nikita Shumilin on 08/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Student.h"

@implementation Student

- (NSString *)description
{
    return [NSString stringWithFormat:@"Name student: %@ %@. Student says: %@", self.firstName, self.lastName, self.helloPhrase];
}

- (NSString *)studentID {
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

@end
