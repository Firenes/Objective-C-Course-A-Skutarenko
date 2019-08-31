//
//  Student.m
//  ProtocolsTest
//
//  Created by Nikita Shumilin on 05/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void) study {
    
}


#pragma mark - Patient

- (BOOL) areYouOK {
//    BOOL ok = arc4random_uniform(1);
    BOOL ok = arc4random() % 2;
    
    NSLog(@"Is student %@ ok? %@", self.name, ok ? @"YES": @"NO");
    
    return ok;
}

- (void) takePill {
    NSLog(@"Student %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Student %@ makes a shot", self.name);
}

- (NSString*) howIsYourFamily {
    return @"My family is doing well!";
}

@end
