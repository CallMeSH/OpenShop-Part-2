#import "Customer.h"
#import "Stock.h"
#import "Product.h"
#import "Order.h"

@implementation Customer

- (instancetype) initFromWizard {
    if(self = [super init]) {
        NSLog(@"What is the name of the customer ?");
        scanf("%s", name);
    }
    
    return self;
}

- (Order*) buyProduct:(Product*) product {
    Stock* stock = [Stock sharedStock];
    
    if([stock quantityOfProduct:product] <= 0) {
        NSLog(@"Unfortunately this product is out of stock.");
        return nil;
    }
    
    [stock takeProduct:product];
    
    Order* order = [[Order alloc]init];
    order.customer = self;
    order.product = product;
    
    return order;
}

- (char *)name {
    return name;
}

@end
