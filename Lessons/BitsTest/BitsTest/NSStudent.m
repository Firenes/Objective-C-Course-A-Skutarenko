//
//  NSStudent.m
//  BitsTest
//
//  Created by Nikita Shumilin on 12.01.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import "NSStudent.h"

@implementation NSStudent

/*
- (NSString *) description {
    return [NSString stringWithFormat: @"Student studies:\n"
                                        "biology = %@\n"
                                        "math = %@\n"
                                        "development = %@\n"
                                        "engineering = %@\n"
                                        "art = %@\n"
                                        "psychology = %@\n"
                                        "anatomy = %@",
            self.studiesBiology ? @"yes": @"no",
            self.studiesMath ? @"yes": @"no",
            self.studiesDevelopment ? @"yes": @"no",
            self.studiesEngineering ? @"yes": @"no",
            self.studiesArt ? @"yes": @"no",
            self.studiesPsychology ? @"yes": @"no",
            self.studiesAnatomy ? @"yes": @"no"];
}
*/

- (NSString *) answerByType: (NSStudentSubjectType) type {
    return self.subjectType & type ? @"yes": @"no";
}

- (NSString *) description {
    return [NSString stringWithFormat: @"Student studies:\n"
                                        "biology = %@\n"
                                        "math = %@\n"
                                        "development = %@\n"
                                        "engineering = %@\n"
                                        "art = %@\n"
                                        "psychology = %@\n"
                                        "anatomy = %@",
                                        [self answerByType:NSStudentSubjectTypeBiology],//self.subjectType & NSStudentSubjectTypeBiology ? @"yes": @"no",
                                        [self answerByType:NSStudentSubjectTypeMath], //self.subjectType & NSStudentSubjectTypeMath ? @"yes": @"no",
                                        [self answerByType:NSStudentSubjectTypeDevelopment], //self.subjectType & NSStudentSubjectTypeDevelopment ? @"yes": @"no",
                                        [self answerByType:NSStudentSubjectTypeEngineering], //self.subjectType & NSStudentSubjectTypeEngineering ? @"yes": @"no",
                                        [self answerByType:NSStudentSubjectTypeArt], //self.subjectType & NSStudentSubjectTypeArt ? @"yes": @"no",
                                        [self answerByType:NSStudentSubjectTypePsychology], //self.subjectType & NSStudentSubjectTypePsychology ? @"yes": @"no",
                                        [self answerByType:NSStudentSubjectTypeAnatomy]]; //self.subjectType & NSStudentSubjectTypeAnatomy ? @"yes": @"no"];
}

@end
