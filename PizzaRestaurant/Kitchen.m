//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"


@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)aSize toppings:(NSArray *)aToppings
{
 
    Pizza *createPizza = [[Pizza alloc] initWithPizzaSize:aSize andToppings:aToppings];
    return createPizza;
    
}

@end
