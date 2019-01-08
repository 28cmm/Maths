//
//  scoreKeeper.m
//  Maths
//
//  Created by Yilei Huang on 2019-01-08.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "scoreKeeper.h"



@implementation scoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _right = @(0);
        _wrong =@(0);
        
    }
    return self;
}

-(Boolean)percent:(NSString*)a question:(NSInteger)question{
    if([a isEqual: @"exit\n"]){
        NSLog(@"goodbye");
        NSNumber *percent = @(([_right integerValue]/([_right floatValue]+[_wrong floatValue]) *100));
        NSLog(@"your score: %@ right, %@ wrong --- %@%%",_right,_wrong,percent);
        return NO;
    }else if([a integerValue] == question){
        _right = @([_right integerValue]+1);
        NSNumber *percent = @(([_right integerValue]/([_right floatValue]+[_wrong floatValue]) *100));
        NSLog(@"Right answer, your score: %@ right, %@ wrong --- %@%%",_right,_wrong,percent);
        
    }else{
        _wrong =@([_wrong integerValue]+1);
        NSNumber *percent = @(([_right integerValue]/([_right floatValue]+[_wrong floatValue]) *100));
        NSLog(@"Wrong answer, your score: %@ right, %@ wrong --- %@%%",_right,_wrong,percent);
    }
    return YES;
}




@end
