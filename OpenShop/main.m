#import <Foundation/Foundation.h>
#import "Stock.h"
#import "Product.h"
#import "Customer.h"
#import "Television.h"
#import "Radio.h"
#import "Computer.h"
#import "Order.h"
#import "Watchable.h"
#import "Listenable.h"

void addProduct();
void buySomething();
void testProduct();
Product* getProductFromUser();

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(true) {
            NSLog(@"-------- Welcome --------");
            NSLog(@"Do you want to add something in stock or buy something ?");
            NSLog(@"1: Add a product in Stock");
            NSLog(@"2: Buy something");
            NSLog(@"3: Test a product");
            
            int choice;
            scanf("%d", &choice);
            
            if(choice == 1) {
                addProduct();
            } else if (choice == 2){
                buySomething();
            } else {
                testProduct();
            }
        }
    }
    return 0;
}

void addProduct() {
    NSLog(@"-------- Stock Management --------");
    NSLog(@"What type of product do you want to add ?");
    NSLog(@"1: A Television");
    NSLog(@"2: A Radio");
    NSLog(@"3: A Computer");
    
    int choice;
    scanf("%d", &choice);
    
    Product* product;
    if(choice == 1) {
        product = [[Television alloc]initFromWizard];
    } else if(choice == 2) {
        product = [[Radio alloc]initFromWizard];
    } else {
        product = [[Computer alloc]initFromWizard];
    }
    
    NSLog(@"What quantity of the product do you want to add ?");
    
    int quantity;
    scanf("%d", &quantity);
    
    Stock* stock = [Stock sharedStock];
    [stock addProduct:product inQuantity:quantity];
    
    NSLog(@"Your product '%s' has just been added.", product.name);
}

Product* getProductFromUser() {
    Stock* stock = [Stock sharedStock];
    
    for (int i = 0; i < 100; i++) {
        Product* product = [stock productAtIndex:i];
        
        if(product == nil) break;
        
        NSLog(@"%d: %s | Quantity: %d", i + 1, product.name, [stock quantityOfProduct:product]);
    }
    
    int choice;
    scanf("%d", &choice);
    
    Product* product = [stock productAtIndex: (choice - 1)];
    
    if(product == nil) {
        NSLog(@"We did not recognize the product you asked");
    }
    
    return product;
}

void buySomething() {
    NSLog(@"-------- Shop --------");
    NSLog(@"Before we start, let's create a customer account...");
    
    Customer* customer = [[Customer alloc]initFromWizard];
    
    NSLog(@"Now select the product you want to buy from our stocks:");
    
    Product* product = getProductFromUser();
    
    if(product == nil) {
        return;
    }
    
    Order* order = [customer buyProduct:product];
    
    if(order) {
        NSLog(@"%s just bought one %s", order.customer.name, order.product.name);
    }
}

void testProduct() {
    NSLog(@"-------- Test a product --------");
    
    NSLog(@"Now select the product you want to test from our stocks:");
    
    Product* product = getProductFromUser();
    
    if(product == nil) {
        return;
    }
    
    NSLog(@"The seller turn on the %s.", product.name);
    
    if([product conformsToProtocol:@protocol(Watchable)]) {
        Product<Watchable>* watchableProduct = (Product<Watchable>*) product;
        [watchableProduct showSomeImages];
    }
    if([product conformsToProtocol:@protocol(Listenable)]) {
        Product<Listenable>* listenableProduct = (Product<Listenable>*) product;
        [listenableProduct streamSomeMusic];
    }
}