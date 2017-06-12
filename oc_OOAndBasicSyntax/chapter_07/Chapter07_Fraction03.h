//
//  Chapter07_Fraction03.h
//  oc_OOAndBasicSyntax
//
//    on 13-6-15.
//   
//

#import <Foundation/Foundation.h>

@interface Chapter07_Fraction03 : NSObject

@property int numorator,denominator;

-(void)print;
-(void)setTo:(int) n over:(int) d;
-(double)convetToNum;

@end
