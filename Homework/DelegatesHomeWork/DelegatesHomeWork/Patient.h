//
//  Patient.h
//  DelegatesHomeWork
//
//  Created by Nikita Shumilin on 11/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    
    HeadacheHasnt = 0,
    HeadacheHas = 1
    
} Headache;

typedef enum {
    
    AssacheHasnt = 0,
    AssacheHas = 1
    
} Assache;

typedef enum {
    
    BodyPartHead,
    BodyPartHands,
    BodyPartStomach,
    BodyPartAss,
    BodyPartLegs
    
} BodyPart;

@protocol PatientDelegate;

@interface Patient : NSObject

@property (assign, nonatomic) BOOL isDoctorGood;
@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat temperature;
@property (assign, nonatomic) Headache isHeadache;
@property (assign, nonatomic) Assache isAssache;
@property (weak, nonatomic) id <PatientDelegate> delegate;

// for human doctor
- (BOOL) feelsWorst;
- (void) takePill;
- (void) makeShot;

// for pet doctor
- (void) getThermometerInAss;
- (void) takeDelicacy;
- (void) sayGoodBoy;

@end

@protocol PatientDelegate <NSObject>

@required
- (void) patientFeelsBad: (Patient *) patient withPartOfBody: (BodyPart) bodyPart;

@end

NS_ASSUME_NONNULL_END
