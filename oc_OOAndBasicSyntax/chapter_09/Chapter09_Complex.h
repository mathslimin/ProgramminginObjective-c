//
//  Chapter09_Complex.h
//  oc_OOAndBasicSyntax
//
//    on 13-6-16.
//   
//

#import <Foundation/Foundation.h>

@interface Chapter09_Complex : NSObject

@property double real, imaginary;

-(void) print;
-(void) setReal:(double)r andImaginary:(double) i;
-(Chapter09_Complex *)add:(Chapter09_Complex *)f;

@end
