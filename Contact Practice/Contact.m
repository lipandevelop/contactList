//
//  Contact.m
//  Contact Practice
//
//  Created by Li Pan on 2016-01-12.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype) initWithName:(NSString *)name email:(NSString *)email {
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    return self;
}

- (void) displayDtail {
    
}

@end
