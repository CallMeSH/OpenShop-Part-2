#import <Foundation/Foundation.h>
@class Order;
@class Product;

@interface Customer : NSObject {
    char name[100];
}

- (instancetype) initFromWizard;

- (Order*) buyProduct:(Product*) product;
- (char*) name;

@end
