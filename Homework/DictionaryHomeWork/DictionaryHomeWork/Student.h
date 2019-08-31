//
//  Student.h
//  DictionaryHomeWork
//
//  Created by Nikita Shumilin on 08/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (strong, nonatomic) NSString *helloPhrase;

- (NSString*) studentID;

@end

NS_ASSUME_NONNULL_END
