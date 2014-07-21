#import <Foundation/Foundation.h>
@class Product;

@interface Stock : NSObject {
    Product* products[100];
    int quantities[100];
}

+ (instancetype) sharedStock;

- (void) addProduct:(Product*)product inQuantity:(int)quantity;
- (Product*) productAtIndex:(int)index;
- (int) quantityOfProduct:(Product*)product;
- (void) takeProduct:(Product*)product;

@end
