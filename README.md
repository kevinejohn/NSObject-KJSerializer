NSObject-KJSerializer
=====================

Easy way to automate the mapping of NSObjects to NSDictionary and back again. Great for JSON handling

Tested and works with:
NSString
NSNumber
UIImage
NSData

How to use it:

    #import "NSObject+KJSerializer.h"
    #import "YourObject.h"

    YourObject * object = [YourObject new];
    object.some_string = @"Hello World";
    object.some_number = [NSNumber numberWithInt:7];
    object.some_image = [UIImage imageNamed:@"linux.png"];
    object.some_data = [@"some data string" dataUsingEncoding:NSUTF8StringEncoding];
    
    // Convert NSObject to NSDictionary
    NSDictionary * dictionary = [object getDictionary];
    NSLog(@"Serialized: %@",dictionary.description);
    
    // Convert dictionary to JSON
    
    // Receive JSON and convert to NSDictionary
    
    // Convert NSDictionary back to your NSObject
    YourObject * anotherObject = [YourObject new];
    [anotherObject setDictionary:dictionary];
    NSLog(@"Deserialized: %@ %@ %@ %@", anotherObject.some_string, anotherObject.some_number.stringValue, anotherObject.some_image.description, anotherObject.some_data.description);
