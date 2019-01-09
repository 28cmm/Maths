//
//  main.m
//  Maths
//
//  Created by Yilei Huang on 2019-01-07.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "scoreKeeper.h"
#import "inputHandler.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Boolean gameOn = YES;
        QuestionManager *questionManager =[QuestionManager new];
        scoreKeeper *score = [[scoreKeeper alloc]init];
        while(gameOn){
            //random question
            QuestionFactory * questionFactory = [QuestionFactory new];
            Question *question=[questionFactory generateRandomQuestion];
            //Question *timer =[Question new];
            NSLog(@"%@", [question question]);
            
            //answer
            inputHandler *putHandler = [[inputHandler alloc] init];
            NSString*intChar=[putHandler process];

            // 1st is input   2nd is answer
            gameOn =[score percent:intChar question:[question answer]];
            NSMutableArray*questionArray =[questionManager question];
            //convert to time
            NSNumber * time = [NSNumber numberWithInteger:[question answerTime]];
            
            [questionArray addObject:time];
            //calculate the time
            [questionManager timeOut];
            //time.integerValue;
            //NSDate * endTime = [additionQuestion endTime];
          
        }
    }
    return 0;
}
