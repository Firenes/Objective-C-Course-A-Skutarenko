//
//  Jumpers.h
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 06/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//


#ifndef Jumpers_h
#define Jumpers_h

@protocol Jumpers <NSObject>

@required
@property (assign, nonatomic) CGFloat maxJump;
- (NSString*) scatter;
- (NSString*) jump;

@optional
- (NSString*) fly;

@end

#endif /* Jumpers_h */
