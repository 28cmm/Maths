//
//  QuestionFactory.m
//  Maths
//
//  Created by Yilei Huang on 2019-01-09.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "QuestionFactory.h"
#import "Addition.h"
#import "SubtractionQuestion.h"
#import "DivideQuestion.h"
#import "MultipleQuestion.h"

@implementation QuestionFactory
-(Question*)generateRandomQuestion{
    // random between 0 and 3
    
    // switch
    int pick =arc4random_uniform(3);
    
   
    switch (pick) {
        case 0:{
            Addition * addition = [Addition new];
            return addition;
        };
        case 1:{
            SubtractionQuestion *subtractQuestion = [SubtractionQuestion new];
            return subtractQuestion;
        };
        case 2:{
            MultipleQuestion *multipleQuestion =[MultipleQuestion new];
            return multipleQuestion;
        };
        case 3:{
            DivideQuestion *divideQuestion = [DivideQuestion new];
            return divideQuestion;
        };
    }
    return nil;
    // 0 -
   // Addition *additionQuestion = [A a];
    
}
@end
