//
//  NShStudent.m
//  TimeHomeWork
//
//  Created by Nikita Shumilin on 19.01.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import "NShStudent.h"

@implementation NShStudent

- (instancetype)init
{
    self = [super init];
    if (self) {
        // Set random age 
        self.age = 16 + arc4random_uniform(50 - 16 + 1);
    }
    return self;
}

// Convert data to dateFormat
- (NSString *) dateToString: (NSDate *) birthDate {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"dd/MM/yyyy"];
    
    return [dateFormatter stringFromDate:birthDate];
}

- (NSString *) description {
    return [NSString stringWithFormat:@"Student %2ld, %@ %@ %@", self.number, self.firstName, self.secondName, [self dateToString:self.dateOfBirth]];
}

@end
