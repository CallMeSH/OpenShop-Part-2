#import "Radio.h"

@implementation Radio

- (instancetype)initFromWizard {
    if(self = [super initFromWizard]) {
        NSLog(@"Is your radio ready for internet ? (1/0)");
        
        int isInternetReady;
        scanf("%d", &isInternetReady);
        self.isInternetReady = isInternetReady == 1;
    }
    
    return self;
}

@end
