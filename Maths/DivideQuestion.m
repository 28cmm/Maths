//
//  DivideQuestion.m
//  Maths
//
//  Created by Yilei Huang on 2019-01-09.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "DivideQuestion.h"

@implementation DivideQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.question =[NSString stringWithFormat:@"%@ / %@",self.rightValue,self.leftValue];
        self.answer = [self.rightValue integerValue] / [self.leftValue integerValue];
    }
    return self;
}
@end
