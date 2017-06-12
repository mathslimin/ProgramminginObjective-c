//
//  Chapter09_Complex.m
//  oc_OOAndBasicSyntax
//
//    on 13-6-16.
//   
//

#import "Chapter09_Complex.h"

@implementation Chapter09_Complex

@synthesize real, imaginary;

-(void) print
{
    NSLog(@"%g + %gi", real, imaginary);
}
-(void) setReal:(double)r andImaginary:(double) i
{
    real = r;
    imaginary = i;
}
-(Chapter09_Complex *)add:(Chapter09_Complex *)f
{
    Chapter09_Complex *result = [[Chapter09_Complex alloc] init];
    result.real = real + f.real;
    result.imaginary = imaginary + f.imaginary;
    return result;
}


@end
