//
//  NSStudent.h
//  BitsHomeWork
//
//  Created by Nikita Shumilin on 12.01.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

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

@property (assign, nonatomic) NSInteger studentNumber;
@property (assign, nonatomic) NSStudentSubjectType subjectType;

@end

NS_ASSUME_NONNULL_END
