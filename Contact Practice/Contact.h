//
//  Contact.h
//  Contact Practice
//
//  Created by Li Pan on 2016-01-12.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)NSString *email;

- (instancetype) initWithName:(NSString *)name email:(NSString *)email;


@end
