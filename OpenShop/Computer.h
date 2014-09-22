#import "Product.h"
#import "Watchable.h"
#import "Listenable.h"

@interface Computer : Product <Watchable, Listenable>

@property float frequency;
@property int ramAmount;
@property int diskSize;


@end
