//
//  InputCollector.h
//  Contact Practice
//
//  Created by Li Pan on 2016-01-12.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

-(NSString *)inputForPrompt:(NSString *)promptString andMenu:(NSString *)menu;

@end
