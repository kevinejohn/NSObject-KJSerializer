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
    
    // NSObject to NSDictionary
    NSDictionary * dictionary = [YourObject getDictionary];
    
    // Convert to JSON or whatever
    ...
    // Receive JSON and convert to NSDictionary
    
    // NSDictionary to NSObject
    [YourObject setDictionary:dictionary];
