//
//  Patient.h
//  DelegatesTest
//
//  Created by Nikita Shumilin on 11/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PatientDelegate;

@interface Patient : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat temperature;
@property (weak, nonatomic) id <PatientDelegate> delegate;

- (BOOL) howAreYou;
- (void) takePill;
- (void) makeShot;

@end


@protocol PatientDelegate <NSObject>

@required
- (void) patientFeelsBad: (Patient *) patient;
- (void) patient:(Patient *) patient hasQuestion:(NSString *) question;

@end

NS_ASSUME_NONNULL_END
