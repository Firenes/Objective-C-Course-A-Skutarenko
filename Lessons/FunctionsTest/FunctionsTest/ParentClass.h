//
//  ParentClass.h
//  FunctionsTest
//
//  Created by Nikita Shumilin on 14/07/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ParentClass : NSObject

+ (void) whoAreYou;

- (void) sayHello;
- (void) say:(NSString*) string;
- (void) say:(NSString*) string and:(NSString*) string2;
- (void) say:(NSString*) string and:(NSString*) string2 andAfterThat:(NSString*) string3;

- (NSString*) saySomeNumberString;
- (NSString*) saySomething;

@end

NS_ASSUME_NONNULL_END
