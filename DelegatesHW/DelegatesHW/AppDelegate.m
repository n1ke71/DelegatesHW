//
//  AppDelegate.m
//  DelegatesHW
//
//  Created by n1ke71 on 13.12.2017.
//  Copyright © 2017 n1ke71. All rights reserved.
//

#import "AppDelegate.h"
#import "KIPatient.h"
#import "KIDoctor.h"
#import "KIDoctorsFriend.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
  
    
    KIDoctor* doctor1 = [[KIDoctor alloc]init];
    doctor1.name = @"doctor1";
    doctor1.dailyRaport = [NSMutableArray array];
    
    KIDoctorsFriend* doctor2 = [[KIDoctorsFriend alloc]init];
    doctor2.name = @"doctors friend2";
    doctor2.dailyRaport = [NSMutableArray array];
    
    KIDoctorsFriend* doctor3 = [[KIDoctorsFriend alloc]init];
    doctor3.name = @"doctors friend3";
    doctor3.dailyRaport = [NSMutableArray array];
    
    KIPatient* patient1 = [[KIPatient alloc]init];
    patient1.name = @"patient1";
    patient1.temperature = 30.f + (arc4random_uniform(10));
    patient1.pressure = 160.f + (arc4random_uniform(30));
    patient1.delegate = doctor1;
    
    KIPatient* patient2 = [[KIPatient alloc]init];
    patient2.name = @"patient2";
    patient2.temperature = 30.f + (arc4random_uniform(10));
    patient2.pressure = 160.f + (arc4random_uniform(30));
    patient2.delegate = doctor1;
    
    KIPatient* patient3 = [[KIPatient alloc]init];
    patient3.name = @"patient3";
    patient3.temperature = 30.f + (arc4random_uniform(10));
    patient3.pressure = 160.f + (arc4random_uniform(30));
    patient3.delegate = doctor1;
   
    KIPatient* patient4 = [[KIPatient alloc]init];
    patient4.name = @"patient4";
    patient4.temperature = 30.f + (arc4random_uniform(10));
    patient4.pressure = 160.f + (arc4random_uniform(30));
    patient4.delegate = doctor2;
    
    KIPatient* patient5 = [[KIPatient alloc]init];
    patient5.name = @"patient5";
    patient5.temperature = 30.f + (arc4random_uniform(10));
    patient5.pressure = 160.f + (arc4random_uniform(30));
    patient5.delegate = doctor2;
    
    KIPatient* patient6 = [[KIPatient alloc]init];
    patient6.name = @"patient6";
    patient6.temperature = 30.f + (arc4random_uniform(10));
    patient6.pressure = 160.f + (arc4random_uniform(30));
    patient6.delegate = doctor3;
    
    NSArray* patients = [NSArray arrayWithObjects:patient1,patient2,patient3,patient4,patient5,patient6, nil];
    

    
    for (KIPatient* patient in patients) {
        
    [patient.delegate patientFeelsBad:patient patientBodyPain:arc4random_uniform(4)];
        
    }
    
    
    
    for (NSString* string in doctor1.dailyRaport) { //Отчет
        
        NSLog(@"%@",string);
    }
        
    for (NSString* string in doctor2.dailyRaport) {
        
        NSLog(@"%@",string);
    }
        
    for (NSString* string in doctor3.dailyRaport) {
        
        NSLog(@"%@",string);
    }
    return YES;
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
