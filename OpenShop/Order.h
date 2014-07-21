#import <Foundation/Foundation.h>

@class Customer;
@class Product;

@interface Order : NSObject

@property Customer* customer;
@property Product* product;

@end
