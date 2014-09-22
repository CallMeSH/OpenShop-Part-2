#import "Television.h"

@implementation Television

- (instancetype)initFromWizard {
    if(self = [super initFromWizard]) {
        NSLog(@"What is the size in centimeters of your television ?");
        
        int size;
        scanf("%d", &size);
        self.size = size;
    }
    
    return self;
}

-(void)showSomeImages {
    NSLog(@"The television streams a nice game where the player seems to have a very good time!");
}

@end
