//
//  Human.h
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 07/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    
    GenderMale,
    GenderFemale
    
} Gender;

@interface Human : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat weight;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) Gender gender;

@end

NS_ASSUME_NONNULL_END
