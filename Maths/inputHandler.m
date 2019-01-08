//
//  inputHandler.m
//  Maths
//
//  Created by Yilei Huang on 2019-01-08.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "inputHandler.h"


@implementation inputHandler
-(NSString*)process{
    char inputChars[255];
    NSLog(@"input the result: (enter exit to leave!!!!!)");
    fgets(inputChars,255,stdin);
    return [NSString stringWithUTF8String:inputChars];
}

@end
