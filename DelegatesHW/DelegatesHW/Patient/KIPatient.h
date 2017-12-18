//
//  KIPatient.h
//  DelegatesHW
//
//  Created by n1ke71 on 13.12.2017.
//  Copyright © 2017 n1ke71. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@protocol KIPatientDelegate;

@interface KIPatient : NSObject

@property(strong,nonatomic) NSString* name;
@property(assign,nonatomic) CGFloat   temperature;
@property(assign,nonatomic) CGFloat   pressure;
@property(assign,nonatomic) BOOL      KIPatientMoodType;
@property(weak,nonatomic) id <KIPatientDelegate> delegate;

@end

@protocol KIPatientDelegate <NSObject>

-(void)patientFeelsBad:(KIPatient*)patient ;

@end


