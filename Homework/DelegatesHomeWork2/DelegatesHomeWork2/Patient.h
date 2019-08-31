//
//  Patient.h
//  DelegatesHomeWork2
//
//  Created by Nikita Shumilin on 12/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    
    BodyPartHead,
    BodyPartHands,
    BodyPartAss,
    BodyPartLegs
    
} BodyPart;

@protocol PatientDelegate;

@interface Patient : NSObject


@property (strong, nonatomic) NSString *patientName;
@property (assign, nonatomic) CGFloat temperature;
@property (assign, nonatomic) BOOL isStomachache;
@property (assign, nonatomic) BOOL isGoodDoctor;
@property (weak, nonatomic) id <PatientDelegate> delegate;

- (BOOL) feelsWorst;
- (void) takePill;
- (void) makeShot;
- (void) toSetAPlasterCast;
- (void) getThermometerInAnus;
- (void) takeADelicacy;

@end

@protocol PatientDelegate <NSObject>

@required
- (void) patientFeelsBad:(Patient *) patient withSickBodyPart:(BodyPart) sickBodyPart;

@end

NS_ASSUME_NONNULL_END
