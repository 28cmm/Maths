//
//  QuestionManager.m
//  Maths
//
//  Created by Yilei Huang on 2019-01-09.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager


- (instancetype)init
{
    self = [super init];
    if (self) {
        _question = [NSMutableArray new];
    }
    return self;
}

-(NSString*)timeOut{
    int sum=0;
    for(int i=0;i < _question.count;i++){
        sum += [_question[i] integerValue] ;
    }
    int average = sum / _question.count ;
    //NSNumber * total = @(_question.count-1);
    NSLog(@"total time: %@ s, average time: %i s",_question[_question.count-1],average);
    return 0;
}
@end
