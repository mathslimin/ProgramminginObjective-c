//
//  AddressCard_New.m
//  oc_OOAndBasicSyntax
//
//    on 13-6-30.
//   
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName;
@synthesize book;

-(id) initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }
    return self;
}
-(void) addCard:(AddressCard *) theCard
{
    [book addObject:theCard];
}
-(int) entries
{
    return (int)[book count];
}
-(void) list
{
    NSLog(@"========= Contents of: %@========",bookName);
  //ADD by limin 有报错
  for(AddressCard *theCard in book)
  {
      NSLog(@"AddressCard list %-20s   %-32s",[theCard.name UTF8String], [theCard.email UTF8String]);
      NSLog(@"==========================================");
  }

}

//for chapter 19
-(void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:bookName forKey:@"AddressBookeBookName"];
    [encoder encodeObject:book forKey:@"AddressBookBook"];
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    bookName = [aDecoder decodeObjectForKey:@"AddressBookeBookName"];
    book = [aDecoder decodeObjectForKey:@"AddressBookBook"];
    
    return self;
}

@end
