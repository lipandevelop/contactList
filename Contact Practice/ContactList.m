//
//  ContactList.m
//  Contact Practice
//
//  Created by Li Pan on 2016-01-12.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

-(instancetype)init{
    self = [super init];
    if (self) {
        Contact *newContact = [[Contact alloc] initWithName:@"name goes here" email:@"email goes here"];
        _contactlist = [NSMutableArray arrayWithObjects: newContact, nil];
    }
    return self;
}

-(void)printlist {
    for (Contact *contacts in self.contactlist) {
        NSLog(@"%@,%@", contacts.name, contacts.email);
    }
}

@end
