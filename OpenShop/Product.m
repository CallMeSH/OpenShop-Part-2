#import "Product.h"

@implementation Product

- (instancetype)initFromWizard {
    if(self = [super init]) {
        NSLog(@"What is the name of your product ?");
        
        scanf("%s", name);
        
        NSLog(@"What is the price of your product ?");
        
        float price;
        scanf("%f", &price);
        self.price = price;
    }
    
    return self;
}

- (char*) name{
    return name;
}

@end
