//
// Created by jesperjalvemo on 3/26/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "JJMixer.h"


@implementation JJMixer {

}
@synthesize inputs;

- (id)initWithInputs:(NSArray *)inputs {
    self = [super init];
    if (self) {
        self.inputs = inputs;
    }

    return self;
}

+ (id)mixerWithInputs:(NSArray *)inputs {
    return [[self alloc] initWithInputs:inputs];
}

- (float)getOutput {
    float result = 0;
    for (JJSoundModule *soundModule in inputs){
        result += soundModule.getOutput / [inputs count];
    }
    return result;
}


@end