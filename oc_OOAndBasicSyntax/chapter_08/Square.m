//
//  Square.m
//  oc_OOAndBasicSyntax
//
//    on 13-6-15.
//   
//

#import "Square.h"

@implementation Square

-(void) setSide: (int)s
{
    [self setWidth:s andHeight:s];
}
-(int) side
{
    return [self width];
}

@end
