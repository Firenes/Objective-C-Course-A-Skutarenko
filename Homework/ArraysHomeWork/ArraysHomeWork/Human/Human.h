//
//  Human.h
//  ArraysHomeWork
//
//  Created by Nikita Shumilin on 23/07/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    SexMale,
    SexFemale
} Sex;

@interface Human : NSObject

//@property (strong, nonatomic) Human *type;
@property (assign, nonatomic) NSString *name;
@property (assign, nonatomic) NSInteger height;
@property (assign, nonatomic) CGFloat weight;
@property (assign, nonatomic) Sex sex;

- (void) move;

@end

NS_ASSUME_NONNULL_END
