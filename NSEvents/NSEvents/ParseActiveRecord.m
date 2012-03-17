#import "ParseActiveRecord.h"

@implementation ParseActiveRecord

- (void)mapParserObject:(PFObject*)parserObject
{
    // Map parse objects by convention
    // ParseActiveRecord childs should have properties
    // with name matching parse object properties
    for (NSString* key in parserObject.allKeys) 
    {
        [self setValue:[parserObject objectForKey:key] forKey:key];
    }
}

- (id) findById:(NSString*)objectId
{
    @throw  @"Not implemented on base class";
}

- (NSArray*) findAll
{
    @throw  @"Not implemented on base class";
}

@end