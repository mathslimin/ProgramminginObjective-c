//
//  Chapter04_Calculator.h
//  oc_OOAndBasicSyntax
//
//    on 13-5-5.
//   
//

#import <Foundation/Foundation.h>

@interface Chapter04_Calculator : NSObject

//累加算法
-(void) setAccumulator:(double) value;
-(void) clear;
-(double) accumulator;

//算术算法
-(void) add:(double) value;
-(void) subtract: (double) valule;
-(void) multply: (double) valule;
-(void) divide: (double) value;

-(void)printCurrentAccumulator;

@end
