//
//  KIDoctor.m
//  DelegatesHW
//
//  Created by n1ke71 on 13.12.2017.
//  Copyright © 2017 n1ke71. All rights reserved.
//

#import "KIDoctor.h"

@implementation KIDoctor

-(NSString*) gotoSleep{
   
 
    return @"gotoSleep";
}
-(NSString*) takePill{
    
     return @"takePill";
}
-(NSString*) makeShot{
    
    return @"makeShot";
    
}

#pragma mark - KIPatientDelegate

-(void)patientFeelsBad:(KIPatient*)patient {
    
    NSLog(@"Doctors  name:%@",self.name);
    NSLog(@"Patients temp:%.1f",patient.temperature);
    NSLog(@"Patients pres:%.1f",patient.pressure);
    
    if (patient.temperature <= 36.6 | patient.temperature < 37  ) {
        
        NSLog(@"Patient name:%@ %@",patient.name,[self gotoSleep]);
    }
    else if (patient.temperature >= 37. && patient.temperature < 39. | patient.pressure >= 180. && patient.pressure < 190.){
        
        NSLog(@"Patient name:%@ %@",patient.name,[self takePill]);
    }
    else if (patient.temperature >= 39. | patient.pressure >= 190.){
        
        NSLog(@"Patient name:%@ %@",patient.name,[self makeShot]);
    }
    else NSLog(@"Patient name:%@ feels fine",patient.name);
}
@end
