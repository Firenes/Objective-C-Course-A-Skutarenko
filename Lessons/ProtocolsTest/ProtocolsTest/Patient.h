//
//  Patient.h
//  ProtocolsTest
//
//  Created by Nikita Shumilin on 05/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#ifndef Patient_h
#define Patient_h

@protocol Patient <NSObject>

@required

@property (strong, nonatomic) NSString *name;
- (BOOL) areYouOK;
- (void) takePill;
- (void) makeShot;

@optional
- (NSString*) howIsYourFamily;
- (NSString*) howIsYourJob;

@end

#endif /* Patient_h */
