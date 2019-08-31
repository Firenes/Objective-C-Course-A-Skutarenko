//
//  Student.h
//  TypesTest
//
//  Created by Nikita Shumilin on 01/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    
    GenderMale,
    GenderFemale

} Gender;

//// new type of NSInteger
//typedef NSInteger Taburetka;

@interface Student : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) Gender gender;

@end

NS_ASSUME_NONNULL_END
