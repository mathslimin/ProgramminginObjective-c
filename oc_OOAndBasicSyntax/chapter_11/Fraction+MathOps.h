//
//  Fraction+MathOps.h
//  oc_OOAndBasicSyntax
//
//    on 13-6-26.
//   
//

#import "Fraction.h"

@interface Fraction (MathOps)

-(Fraction *) add: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;

@end
