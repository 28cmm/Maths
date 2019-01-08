//
//  scoreKeeper.h
//  Maths
//
//  Created by Yilei Huang on 2019-01-08.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface scoreKeeper : NSObject
@property NSNumber *right;
@property NSNumber *wrong;
-(Boolean)percent:(NSString*)a question:(NSInteger)question;
@end

NS_ASSUME_NONNULL_END
