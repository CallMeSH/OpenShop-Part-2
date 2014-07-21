#import "Product.h"

typedef enum {
    TelevisionTechnologyLED,
    TelevisionTechnologyLCD,
    TelevisionTechnologyPlasma,
} TelevisionTechnology;

@interface Television : Product

@property int size;
@property TelevisionTechnology technology;

@end
