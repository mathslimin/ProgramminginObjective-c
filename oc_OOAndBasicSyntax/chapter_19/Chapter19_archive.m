//
//  Chapter19_archive.m
//  oc_OOAndBasicSyntax
//
//    on 13-7-22.
//   
//

#import "Chapter19_archive.h"

@implementation Chapter19_archive

-(void)chapter19_01
{
    NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:@"hi A classs defined so other calsses can inherd from it",@"abstract class", @"To implement all the methods defined in a protocol",@"adopt",@"Storing an object for later use",@"archving",nil];//创建字典对象glossary
    if ([glossary writeToFile:@"glossary" atomically:YES] == NO) {//将数据写到文件 glossary中
        NSLog(@"Save to file failed!");
    } else {
        NSLog(@"Saved to file success");
    }
}

-(void)chapter19_02
{
    NSDictionary *glossary;
    glossary = [NSDictionary dictionaryWithContentsOfFile:@"glossary"];//dictionaryWithContentsOfFile从文件glossary中读取字符串对象
    for (NSString *key in glossary) {
        NSLog(@" %@ :  %@",key,[glossary objectForKey:key]);
    }
}

-(void)chapter19_03
{
    NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:@"A classs defined so other calsses can inherd from it",@"abstract class", @"To implement all the methods defined in a protocol",@"adopt",@"Storing an object for later use",@"archving",nil];
    [NSArchiver archiveRootObject:glossary toFile:@"glossary.archive"];//用NSKeyedArchiver类中的archiveRootObject:toFile:方法将glossary存储到磁盘中
}

-(void)chapter19_04
{
    NSDictionary *glossary;
    glossary = [NSKeyedUnarchiver unarchiveObjectWithFile:@"glossary.archive"];//通过NSKeyedUnarchiver的unarchiveObjectWithFile:方法将创建的归档文件读入执行程序中
    for (NSString *key in glossary) {
        NSLog(@"%@ : %@",key,[glossary objectForKey:key]);
    }
}

-(void)chapter19_05
{
    NSString *aName = @"Julia Kochan";
    NSString *aEmail = @"jewls337@axlc.com";
    NSString *bName = @"Tony Iannino";
    NSString *bEmail = @"tony.iannino@techfitness.com";
    NSString *cName = @"Stephen Kochan";
    NSString *cEmail = @"steve@steve_kochan.com";
    NSString *dName = @"Jamie Baker";
    NSString *dEmail = @"jbaker@hitmail.com";
    
    AddressCard *card1 = [[AddressCard alloc]init];
    AddressCard *card2  = [[AddressCard alloc] init];
    AddressCard *card3 = [[AddressCard alloc] init];
    AddressCard *card4 = [[AddressCard alloc] init];
    
    //[card1 setName:@"panda1" andEmail:@"email_01"];
    //[card2 setName:@"panda2" andEmail:@"email_02"];
    //[card3 setName:@"panda3" andEmail:@"email_03"];
    //[card4 setName:@"panda4" andEmail:@"email_04"];
    [card1 setName: aName andEmail: aEmail];
    [card2 setName: bName andEmail: bEmail];
    [card3 setName: cName andEmail: cEmail];
    [card4 setName: dName andEmail: dEmail];
    AddressBook *mybook = [AddressBook alloc];
    mybook = [mybook initWithName:@"panda"];
    
    [mybook addCard:card1];
    [mybook addCard:card2];
    [mybook addCard:card3];
    [mybook addCard:card4];
    if ([NSKeyedArchiver archiveRootObject:mybook toFile:@"addrbook.arch"] ==NO) {
        NSLog(@"run Chapter19 archive fail");
    }else
    {
        NSLog(@"run Chapter19 archive succeed");
    }

AddressBook *testBook;

testBook= [NSKeyedUnarchiver unarchiveObjectWithFile:@"addrbook.arch"];
[testBook list];

}
@end
