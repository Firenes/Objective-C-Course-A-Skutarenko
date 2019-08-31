//
//  Runners.h
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#ifndef Runners_h
#define Runners_h

@protocol Runners <NSObject>

@required
@property (assign, nonatomic) CGFloat maxSpeed;
- (NSString*) start;
- (NSString*) run;
- (NSString*) stop;

@optional
- (NSString*) sendHello;

@end

#endif /* Runners_h */
