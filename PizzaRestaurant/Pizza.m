//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Ahmad Hobby on 2018-06-07.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithPizzaSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if (self = [super init]) {
        _size = size;
        _toppings = toppings;
    }
    
    return self;
}



@end
