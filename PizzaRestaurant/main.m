//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"

// String to PizzaSize
PizzaSize stringToSize(NSString * str) {
    if ([str.lowercaseString isEqualToString:@"small"]) {
        return PizzaSizeSmall;
    } if ([str.lowercaseString isEqualToString:@"medium"]) {
        return PizzaSizeMedium;
    } return PizzaSizeLarge;
}


// PizzaSize to String
NSString *sizeToString(PizzaSize size) {
    switch (size) {
        case PizzaSizeSmall:
            return @"small";
        case PizzaSizeMedium:
            return @"medium";
        case PizzaSizeLarge:
            return @"large";
            break;
            
        default:
            break;
    }
}

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (YES) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
            
            
            // 1. get the size from the command words. (first element)
            NSString *firstWord = commandWords[0];
            PizzaSize givenSize = stringToSize(firstWord);
            
            // 2. get the toppings from the command words. (all elements except the first)
            // x | x x x x
            NSRange range = NSMakeRange(1, commandWords.count-1);
            NSArray *toppings = [commandWords subarrayWithRange:range];
            
            // 3. call the kitchen
            Pizza *pizza = [restaurantKitchen makePizzaWithSize:givenSize toppings:toppings];
            
            // 4. log out the result (converting the pizza size to a string)
            NSLog(@"The pizza has toppings %@", pizza.toppings);
            
            
            // log out the size
            NSString *size;
            size = sizeToString(pizza.size);
            NSLog(@"The pizza is of size %@", size);
            
        }
        
    }
    return 0;
}

