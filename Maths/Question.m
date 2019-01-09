//
//  AdditionQuestion.m
//  Maths
//
//  Created by Yilei Huang on 2019-01-07.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "Question.h"

@implementation Question
// overriding getter
- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (instancetype)init{
    if (self = [super init]) {
        _startTime = [NSDate date];
        
        //_question =[NSString stringWithFormat:@"%@ + %@",num1,num2];
        //_answer = [num1 intValue] + [num2 intValue];
        
        _rightValue = @(arc4random_uniform(90)+10);
        _leftValue =@(arc4random_uniform(90)+10);
        
    }
    
    return self;
}

-(NSTimeInterval)answerTime{
    return [_endTime timeIntervalSinceDate:_startTime];
}

//-(NSString*)randomQuestion{
//    char inputNum[255];
//    NSLog(@"%@", _question);
//    NSLog(@"input the result: (enter exit to leave!!!!!)");
//    fgets(inputNum,255,stdin);
//    NSString *num =[NSString stringWithUTF8String:inputNum];
//    return num;
//}
//
//-(Boolean)calculate:(NSString*)num right:(NSNumber*)rightNumber wrong:(NSNumber*)wrongNumber{
//    Boolean gameOn =YES;
//    if([num isEqual: @"exit\n"]){
//        if(([_right integerValue] ==0 )&&([_wrong integerValue] ==0 )){
//            NSLog(@"COME ON at least try ONCE!\n your score: %@ right, %@ wrong --- 0%%",_right,_wrong);
//            gameOn = NO;
//        }else{
//            NSLog(@"goodbye");
//            NSNumber *percent = @(([_right integerValue]/([_right floatValue]+[_wrong floatValue]) *100));
//            NSLog(@"play again!\n your score: %@ right, %@ wrong --- %@%%",_right,_wrong,percent);
//            gameOn =NO;
//        }
//    }else if(_answer == [num integerValue]){
//        _right = @([_right integerValue]+1);
//        
//        NSNumber *percent = @(([_right integerValue]/([_right floatValue]+[_wrong floatValue]) *100));
//        NSLog(@"Congraudation!\n your score: %@ right, %@ wrong --- %@%%",_right,_wrong,percent);
//    }else{
//        _wrong = @([_wrong integerValue]+1);
//        
//        NSNumber *percent = @(([_right integerValue]/([_right floatValue]+[_wrong floatValue]) *100));
//        NSLog(@"sorry try again!\n your score: %@ right, %@ wrong --- %@%%",_right,_wrong,percent);
//    }
//    return gameOn;
//}


//-(void)calculate{
//    int i =0;
//    _wrong = @(0);
//    _right =@(0);
//    while(i ==0){
//        //question
//        char inputNum[255];
//        AdditionQuestion *result =[[AdditionQuestion alloc]init];
//        NSLog(@"%@",[result question]);
//        NSLog(@"%@",_question);
//        NSLog(@"input the result: enter exit to leave!!!!!");
//        fgets(inputNum,255,stdin);
//        NSString *num =[NSString stringWithUTF8String:inputNum];
//        if([num isEqual: @"quit\n"]){
//            NSLog(@"goodbye");
//            NSNumber *percent = @(([_right integerValue]/([_right floatValue]+[_wrong floatValue]) *100));
//            NSLog(@"play again!\n your score: %@ right, %@ wrong --- %@%%",_right,_wrong,percent);
//            break;
//        }else if(_answer == [num integerValue]){
//            _right = @([_right integerValue]+1);
//            NSNumber *percent = @(([_right integerValue]/([_right floatValue]+[_wrong floatValue]) *100));
//            if([_right intValue] == 0){
//                NSLog(@"Congraudation!\n your score: %@ right, %@ wrong --- 100%%",_right,_wrong);
//            }else{
//                NSLog(@"Congraudation!\n your score: %@ right, %@ wrong --- %@%%",_right,_wrong,percent);
//            }
//        }else{
//            _wrong = @([_wrong integerValue]+1);
//            NSNumber *percent = @(([_right integerValue]/([_right floatValue]+[_wrong floatValue]) *100));
//            NSLog(@"sorry try again!\n your score: %@ right, %@ wrong --- %@%%",_right,_wrong,percent);
//        }
//
//    }
//}
@end
