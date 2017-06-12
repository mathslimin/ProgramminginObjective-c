//
//  Chapter07_Fraction_04.h
//  oc_OOAndBasicSyntax
//
//    on 13-6-15.
//   
//

#import <Foundation/Foundation.h>

@interface Chapter07_Fraction_04 : NSObject

@property int numorator,denominator;

-(void) print;
-(void) setTo:(int) n over:(int) d;
-(double)convertToNum;
-(void) add:(Chapter07_Fraction_04 *) f;
-(void)reduce;

-(Chapter07_Fraction_04 *) addResult:(Chapter07_Fraction_04 *) f;

@end
