//
//  Fraction+MathOps.m
//  oc_OOAndBasicSyntax
//
//    on 13-6-26.
//   
//

#import "Fraction+MathOps.h"


@implementation Fraction (MathOps)

-(Fraction *) add: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = (self.numerator* f.denominator) + (self.denominator * f.numerator);
    [result reduce];
    
    return result;
}

-(Fraction *) mul: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return result;
}

-(Fraction *) sub: (Fraction *) f
{
    Fraction *reult = [[Fraction alloc] init];
    
    reult.numerator = (self.numerator * f.denominator) - (self.denominator * f.numerator);
    reult.denominator = (self.denominator * f.denominator);
    [reult reduce];
    
    return reult;
}

-(Fraction *) div: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    [result reduce];
    
    return result;
}


@end

