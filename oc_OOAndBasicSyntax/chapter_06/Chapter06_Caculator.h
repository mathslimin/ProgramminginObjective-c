//
//  Chapter06_Caculator.h
//  oc_OOAndBasicSyntax
//
//    on 13-6-15.
//   
//

#import <Foundation/Foundation.h>

@interface Chapter06_Caculator : NSObject

//累加器
-(void) setAccumulator:(double) value;
-(void)clear;
-(double)accumulator;

//算术方法
-(void) add:(double) value;
-(void) subtract:(double) value;
-(void) multiply:(double) value;
-(void) divide:(double) value;



@end
