//
//  Swimmers.h
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 06/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#ifndef Swimmers_h
#define Swimmers_h

@protocol Swimmers <NSObject>

@required
@property (assign, nonatomic) CGFloat maxDistance;
- (NSString*) dive;
- (NSString*) swim;

@optional
- (NSString*) doSomeBubbles;

@end

#endif /* Swimmers_h */
