#import "Stock.h"
#import "Product.h"

@implementation Stock

+ (instancetype) sharedStock {
    static Stock* stock;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        stock = [[Stock alloc]init];
    });
    
    return stock;
}

- (void) addProduct:(Product*)product inQuantity:(int)quantity {
    for(int i = 0; i < 100; i++) {
        if(self->products[i] == NULL) {
            self->products[i] = product;
            self->quantities[i] = quantity;
            
            return;
        }
    }
}

- (Product*) productAtIndex:(int)index {
    return self->products[index];
}

- (int) quantityOfProduct:(Product*)product {
    for(int i = 0; i < 100; i++) {
        if(self->products[i] == product) {
            return self->quantities[i];
        }
    }
    
    return 0;
}

- (void) takeProduct:(Product*)product {
    for(int i = 0; i < 100; i++) {
        if(self->products[i] == product) {
            self->quantities[i] = self->quantities[i] - 1;
        }
    }
}

@end
