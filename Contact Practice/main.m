//
//  main.m
//  Contact Practice
//
//  Created by Li Pan on 2016-01-12.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "ContactList.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    
    //    InputCollector *commandCollector = [[InputCollector alloc]init];
    //
    //    NSString *commandInput = [commandCollector inputForPrompt:@">"andMenu:@"\nnew - Create a new contact\nlist - List all contacts\nquit - Exit\nPlease Select"];
    //    NSString *command = [commandInput stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\n"]];
    //    ContactList *contactList = [[ContactList alloc] init];
    
    while (YES) {
        InputCollector *commandCollector = [[InputCollector alloc]init];
        
        NSString *commandInput = [commandCollector inputForPrompt:@">"andMenu:@"\nnew - Create a new contact\nlist - List all contacts\nquit - Exit\nPlease Select"];
        NSString *command = [commandInput stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\n"]];
        ContactList *contactList = [[ContactList alloc] init];
        
        
        if ([command isEqualToString:@"new"]) {
            // create a new contact
            
            InputCollector *enterInfo = [[InputCollector alloc] init];
            
            Contact *newContact = [[Contact alloc] initWithName:[enterInfo inputForPrompt:@"Name:"andMenu:@"What Do I Call You?\n"]
                                                          email:[enterInfo inputForPrompt:@"Email:"andMenu:@"How Do I Contact You?\n"]];
            [contactList.contactlist addObject:newContact];
            [];
            
            
        }
        else if ([command isEqualToString:@"list"]) {
            // show all contacts
        }
        else if ([command isEqualToString:@"quit"]) {
            // exit
            break;
        }
        else {
        }
        
        return 0;
    }
}
