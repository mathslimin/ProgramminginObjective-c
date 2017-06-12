//
//  Chapter18_Copy.m
//  oc_OOAndBasicSyntax
//
//    on 13-7-21.
//   
//

#import "Chapter18_Copy.h"

@implementation Chapter18_Copy

-(void)chapter_01
{
    NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:@"one",@"two",@"three",@"four", nil];
    
    NSMutableArray *dataArray2;
    
    dataArray2 = dataArray;
    
    [dataArray2 removeObjectAtIndex:0];
    NSLog(@"dataArray: ");
    for (NSString *elem in dataArray) {
        NSLog(@" %@",elem);
    }
    
    NSLog(@"dataArray2: ");
    for (NSString *elem in dataArray2) {
        NSLog(@" %@",elem);
    }
    
    dataArray2 = [dataArray mutableCopy];
    [dataArray2 removeObjectAtIndex:0];
    NSLog(@"dataArray: ");
    for (NSString *elem in dataArray) {
        NSLog(@" %@",elem);
    }
    
    
    NSLog(@"dataArray2: ");
    for (NSString *elem in dataArray2) {
        NSLog(@" %@",elem);
    }
}

-(void)chapter_02
{
    NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:[NSMutableString stringWithString:@"one"], [NSMutableString stringWithString:@"two"],[NSMutableString stringWithString:@"three"],[NSMutableString stringWithString:@"four"],nil];
    
    NSMutableArray *dataArray2;
    NSMutableString *mStr;
    
    NSLog(@"dataArray: ");
    for (NSString *elem in dataArray) {
        NSLog(@" %@",elem);
    }
    
    dataArray2 = [dataArray mutableCopy];
    mStr = [dataArray2 objectAtIndex:0];
    [mStr appendString:@"ONE"];
   
    NSLog(@"dataArray: ");
    for (NSString *elem in dataArray) {
        NSLog(@" %@",elem);
    }
    
    NSLog(@"dataArray2: ");
    for (NSString *elem in dataArray2) {
        NSLog(@" %@",elem);
    }
    
}

@end
