//
//  AddressCard.h
//  oc_OOAndBasicSyntax
//
//    on 13-6-30.
//   
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject <NSCoding, NSCopying>

-(void) setName: (NSString *) theName;
-(void) setEmail: (NSString *) theEmail;
-(NSString *)name;
-(NSString *)email;
-(void)setName:(NSString *)theName andEmail:(NSString *)theEmail;
-(void) print;

//for chapter 19
//19章添加NSCopying 协议的方法
-(void)assingnName: (NSString *)theName andEmail:(NSString *)theEmail;


@end
