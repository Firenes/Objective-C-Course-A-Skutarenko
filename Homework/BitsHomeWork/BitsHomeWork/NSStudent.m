//
//  NSStudent.m
//  BitsHomeWork
//
//  Created by Nikita Shumilin on 12.01.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import "NSStudent.h"

@implementation NSStudent

- (NSString *) answerByType: (NSStudentSubjectType) type {
    return self.subjectType & type ? @"yes": @"no";
}

- (NSString *) description {
    return [NSString stringWithFormat:  @"\nStudent %ld studies:\n"
                                        "biology = %@\n"
                                        "math = %@\n"
                                        "development = %@\n"
                                        "engineering = %@\n"
                                        "art = %@\n"
                                        "psychology = %@\n"
                                        "anatomy = %@",
                                        self.studentNumber,
                                        [self answerByType:NSStudentSubjectTypeBiology],
                                        [self answerByType:NSStudentSubjectTypeMath],
                                        [self answerByType:NSStudentSubjectTypeDevelopment],
                                        [self answerByType:NSStudentSubjectTypeEngineering],
                                        [self answerByType:NSStudentSubjectTypeArt],
                                        [self answerByType:NSStudentSubjectTypePsychology],
                                        [self answerByType:NSStudentSubjectTypeAnatomy]];
}

@end
