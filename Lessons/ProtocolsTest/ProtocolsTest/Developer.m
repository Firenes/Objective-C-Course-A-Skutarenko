 //
//  Developer.m
//  ProtocolsTest
//
//  Created by Nikita Shumilin on 05/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Developer.h"

@implementation Developer

- (void)work {
    
}


#pragma mark - Patient

- (BOOL) areYouOK {
//    BOOL ok = arc4random_uniform(1);
    BOOL ok = arc4random() % 2;
    
    NSLog(@"Is developer %@ ok? %@", self.name, ok ? @"YES": @"NO");
    
    return ok;
}

- (void) takePill {
    NSLog(@"Developer %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Developer %@ makes a shot", self.name);
}

- (NSString*) howIsYourJob {
    return @"My job is awesome!";
}

@end
