//
//  ClassA.h
//  oc_OOAndBasicSyntax
//
//    on 13-6-15.
//   
//

#import <Foundation/Foundation.h>

@interface ClassA : NSObject
{
    int x;
}
-(void)initVar;

@end


@interface ClassB : ClassA

-(void) printVar;

@end
