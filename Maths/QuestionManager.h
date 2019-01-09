//
//  QuestionManager.h
//  Maths
//
//  Created by Yilei Huang on 2019-01-09.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject
@property NSMutableArray *question;
-(NSString*)timeOut;
@end

NS_ASSUME_NONNULL_END
