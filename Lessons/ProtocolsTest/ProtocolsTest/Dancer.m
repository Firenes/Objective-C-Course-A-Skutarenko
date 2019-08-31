//
//  Dancer.m
//  ProtocolsTest
//
//  Created by Nikita Shumilin on 05/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Dancer.h"

@implementation Dancer

- (void)dance {
    
}


#pragma mark - Patient

- (BOOL) areYouOK {
//    BOOL ok = arc4random_uniform(1);
    BOOL ok = arc4random() % 2;
    
    NSLog(@"Is dancer %@ ok? %@", self.name, ok ? @"YES": @"NO");
    
    return ok;
}

- (void) takePill {
    NSLog(@"Dancer %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Dancer %@ makes a shot", self.name);
}

@end
