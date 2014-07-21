#import "Computer.h"

@implementation Computer

- (instancetype)initFromWizard {
    if(self = [super initFromWizard]) {
        NSLog(@"What is the frequency of your computer ?");
        
        float frequency;
        scanf("%f", &frequency);
        self.frequency = frequency;
        
        NSLog(@"What is the amount of RAM in MO of your computer ?");
        
        int ramAmount;
        scanf("%d", &ramAmount);
        self.ramAmount = ramAmount;
        
        NSLog(@"What is the size of the Hard Drive of your computer ?");
        
        int diskSize;
        scanf("%d", &diskSize);
        self.diskSize = diskSize;
    }
    
    return self;
}

@end