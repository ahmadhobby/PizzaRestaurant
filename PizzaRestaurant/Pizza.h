//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Ahmad Hobby on 2018-06-07.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PizzaSize) {
    PizzaSizeSmall,
    PizzaSizeMedium,
    PizzaSizeLarge,
};


@interface Pizza : NSObject

@property (nonatomic, assign) PizzaSize size;
@property (nonatomic, strong) NSArray *toppings;

- (instancetype)initWithPizzaSize:(PizzaSize)size andToppings:(NSArray *)toppings;

@end
