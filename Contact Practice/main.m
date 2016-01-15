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
    
    while (YES) {
        InputCollector *commandCollector = [[InputCollector alloc]init];
        
        NSString *commandInput = [commandCollector inputForPrompt:@"type >"andMenu:@"\ntype: new - Create a new contact\ntype: list - List all contacts\ntype: quit - Exit\n"];
        NSString *command = [commandInput stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\n,"]];
        ContactList *contactList = [[ContactList alloc] init];

        
        
        if ([[command lowercaseString]isEqualToString:@"new"]) {
            // create a new contact
            
            InputCollector *enterInfo = [[InputCollector alloc] init];
            
            Contact *newContact = [[Contact alloc] initWithName:[enterInfo inputForPrompt:@" \nName >"andMenu:@"What Do I Call You?"]
                                                          email:[enterInfo inputForPrompt:@" \nEmail >"andMenu:@"How Do I Contact You?"]];
            ContactList *detail = [[ContactList alloc] init];
            [contactList.contactlist addObject:newContact];
            NSLog(@"The following is entered:%@,%@", newContact.name, newContact.email);
            
            
            
            
            
        }
        else if ([[command lowercaseString]isEqualToString:@"list"]) {
            // show all contacts
        }
        else if ([[command lowercaseString]isEqualToString:@"quit"]) {
            // exit
            break;
        }
        else {
            NSLog(@"I do not recognize that command, please try again");
        }
        
        return 0;
    }
}
