//
//  ClassA.m
//  oc_OOAndBasicSyntax
//
//    on 13-6-15.
//   
//

#import "ClassA.h"

@implementation ClassA

-(void)initVar
{
    x = 100;
}

@end

@implementation ClassB

-(void) printVar
{
    NSLog(@"x = %i",x);
}

@end
