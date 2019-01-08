//
//  main.m
//  Maths
//
//  Created by Yilei Huang on 2019-01-07.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "scoreKeeper.h"
#import "inputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Boolean gameOn =YES;
        scoreKeeper *score =[[scoreKeeper alloc]init];
        while(gameOn){
            //random question
            AdditionQuestion *question = [[AdditionQuestion alloc] init];
            NSLog(@"%@", [question question]);
            
            //answer
            inputHandler *proce = [[inputHandler alloc] init];
            NSString*intChar=[proce process];

            // 1st is answer   2nd is question
            gameOn =[score percent:intChar question:[question answer]];
          
        }
        //stringByTrimmingCharactersInSet: 
        //NSString * num2 = [NSString                                 stringWithUTF8String:inputNum];
    }
    return 0;
}
