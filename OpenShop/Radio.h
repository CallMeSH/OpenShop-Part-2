#import "Product.h"
#import "Listenable.h"

@interface Radio : Product <Listenable>

@property BOOL isInternetReady;

@end
