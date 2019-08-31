//
//  Object.h
//  ParametersTest
//
//  Created by Nikita Shumilin on 17/07/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Object : NSObject <NSCopying>

@property (strong, nonatomic) Object *name;

// Можно устанавливать getters и setters таки образом
//@property (strong, nonatomic, getter = getObject, setter = setShmetObject) Object *name;

@end

NS_ASSUME_NONNULL_END
