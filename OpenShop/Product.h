#import <Foundation/Foundation.h>

@interface Product : NSObject {
    char name[100];
}

@property float price;

- (instancetype)initFromWizard;

- (char*) name;

@end
