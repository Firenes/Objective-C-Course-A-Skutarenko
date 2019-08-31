//
//  Animals.h
//  ArraysHomeWork
//
//  Created by Nikita Shumilin on 26/07/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animals : NSObject

//@property (strong, nonatomic) Animals *type;
@property (strong, nonatomic) NSString *animalClass;
@property (strong, nonatomic) NSString *animalName;
@property (assign, nonatomic) BOOL isDomestic;
@property (assign, nonatomic) NSInteger howManyLegs;

- (void) animalMove;

@end

NS_ASSUME_NONNULL_END
