//
//  NSStudent.h
//  BitsTest
//
//  Created by Nikita Shumilin on 12.01.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// this is a mask
typedef enum {
    
    NSStudentSubjectTypeBiology         = 1 << 0,
    NSStudentSubjectTypeMath            = 1 << 1,
    NSStudentSubjectTypeDevelopment     = 1 << 2,
    NSStudentSubjectTypeEngineering     = 1 << 3,
    NSStudentSubjectTypeArt             = 1 << 4,
    NSStudentSubjectTypePsychology      = 1 << 5,
    NSStudentSubjectTypeAnatomy         = 1 << 6
    
} NSStudentSubjectType;

@interface NSStudent : NSObject

@property (assign, nonatomic) NSStudentSubjectType subjectType;

/*
@property (assign, nonatomic) BOOL studiesBiology;
@property (assign, nonatomic) BOOL studiesMath;
@property (assign, nonatomic) BOOL studiesDevelopment;
@property (assign, nonatomic) BOOL studiesEngineering;
@property (assign, nonatomic) BOOL studiesArt;
@property (assign, nonatomic) BOOL studiesPsychology;
@property (assign, nonatomic) BOOL studiesAnatomy;
*/

@end

NS_ASSUME_NONNULL_END
