//
//  AddressCard_New.h
//  oc_OOAndBasicSyntax
//
//    on 13-6-30.
//   
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject <NSCopying, NSCopying>

@property(nonatomic,copy) NSString *bookName;
@property(nonatomic, copy) NSMutableArray *book;

-(id) initWithName:(NSString *)name;
-(void) addCard:(AddressCard *) theCard;
-(int) entries;
-(void) list;


@end
