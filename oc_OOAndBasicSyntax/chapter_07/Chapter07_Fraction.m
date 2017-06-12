//
//  Fraction.m
//  oc_OOAndBasicSyntax
//
//    on 13-6-15.
//   
//

#import "Chapter07_Fraction.h"

@implementation Chapter07_Fraction

{
    int numerator;
    int denominator;
}


-(void) print
{
    NSLog(@"%i/%i",numerator, denominator);
}
-(void) setNumerator:(int) n
{
    numerator = n;
    
    
}
-(void) setDenominator:(int) d
{
    denominator = d;
    
}
-(int) numerator
{
    return numerator;
}
-(int) denominator
{
    return  denominator;
}
-(double) convertToNum
{
    if (denominator != 0) {
        return (double) numerator/denominator;
    }
    
    else
        return NAN;
}


@end
