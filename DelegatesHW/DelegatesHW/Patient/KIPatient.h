//
//  KIPatient.h
//  DelegatesHW
//
//  Created by n1ke71 on 13.12.2017.
//  Copyright © 2017 n1ke71. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

typedef enum {
 
KIPatientHead    = 1,
KIPatientLeg     = 2,
KIPatientStomach = 3,
KIPatientArm     = 4
    
}KIPatientBodyParts;

@protocol KIPatientDelegate;

@interface KIPatient : NSObject

@property(strong,nonatomic)   NSString* name;
@property(assign,nonatomic)   CGFloat   temperature;
@property(assign,nonatomic)   CGFloat   pressure;
@property(assign,nonatomic)   KIPatientBodyParts   bodyParts;
@property(weak,nonatomic) id <KIPatientDelegate> delegate;
@property(assign,nonatomic)   BOOL      doctorsRate;
@end

@protocol KIPatientDelegate <NSObject>

-(void)patientFeelsBad:(KIPatient*)patient patientBodyPain:(KIPatientBodyParts) bodyParts;

@end


