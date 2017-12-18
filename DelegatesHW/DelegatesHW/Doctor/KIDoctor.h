//
//  KIDoctor.h
//  DelegatesHW
//
//  Created by n1ke71 on 13.12.2017.
//  Copyright © 2017 n1ke71. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KIPatient.h"

@interface KIDoctor : NSObject <KIPatientDelegate>

@property(strong,nonatomic) NSString* name;

-(NSString*) gotoSleep;
-(NSString*) takePill;
-(NSString*) makeShot;
@end
