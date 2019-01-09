//
//  AdditionQuestion.h
//  Maths
//
//  Created by Yilei Huang on 2019-01-07.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject
@property(nonatomic, copy) NSString * question;
@property  (nonatomic)NSInteger answer;

@property(nonatomic)  NSNumber* rightValue;
@property(nonatomic)  NSNumber *leftValue;

@property(nonatomic, strong) NSDate * startTime;
@property(nonatomic, strong) NSDate * endTime;

-(NSTimeInterval)answerTime;
-(void)generateQuestion;
@end

NS_ASSUME_NONNULL_END
