#import "Product.h"
#import "Watchable.h"

typedef enum {
    TelevisionTechnologyLED,
    TelevisionTechnologyLCD,
    TelevisionTechnologyPlasma,
} TelevisionTechnology;

@interface Television : Product <Watchable>

@property int size;
@property TelevisionTechnology technology;

@end
