//
//  Animals.h
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animals : NSObject

@property (strong, nonatomic) NSString *animalClass;
@property (strong, nonatomic) NSString *animalName;
@property (assign, nonatomic) BOOL isDomestic;
@property (assign, nonatomic) NSInteger howManyLegs;

@end

NS_ASSUME_NONNULL_END
