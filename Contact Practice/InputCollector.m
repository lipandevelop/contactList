//
//  InputCollector.m
//  Contact Practice
//
//  Created by Li Pan on 2016-01-12.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString andMenu:(NSString*) menu{
    
    // Show prompt = promptString
    NSLog(@"%@%@", menu, promptString);

    // Collect data (fgets)
    char input[225];
    //fgets(input, 225, stdin);
    scanf("%s", input);
    NSString *inputString = [NSString stringWithUTF8String:input];
    
    // return data collected as NSString
    return inputString;

}

@end
