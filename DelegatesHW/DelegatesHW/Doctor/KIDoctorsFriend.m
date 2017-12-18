//
//  KIDoctorsFriend.m
//  DelegatesHW
//
//  Created by n1ke71 on 18.12.2017.
//  Copyright © 2017 n1ke71. All rights reserved.
//

#import "KIDoctorsFriend.h"

@implementation KIDoctorsFriend

-(NSString*) gotoRun{
  
    return @"gotoRun";
    
}
-(NSString*) takeBroth{
    
    return @"takeBroth";
    
}
-(NSString*) makeDropper{
    
    return @"makeDropper";
    
}
#pragma mark - KIPatientDelegate

-(void)patientFeelsBad:(KIPatient*)patient {
    
    NSLog(@"Doctors  name:%@",self.name);
    NSLog(@"Patients temp:%.1f",patient.temperature);
    NSLog(@"Patients pres:%.1f",patient.pressure);
    
    if (patient.temperature <= 36.6 | patient.temperature < 37  ) {
        
        NSLog(@"Patient name:%@ %@",patient.name,[self gotoRun]);
    }
    else if (patient.temperature >= 37. && patient.temperature < 39. | patient.pressure >= 180. && patient.pressure < 190.){
        
        NSLog(@"Patient name:%@ %@",patient.name,[self takeBroth]);
    }
    else if (patient.temperature >= 39. | patient.pressure >= 190.){
        
        NSLog(@"Patient name:%@ %@",patient.name,[self makeDropper]);
    }
    else NSLog(@"Patient name:%@ feels fine",patient.name);
}
@end
