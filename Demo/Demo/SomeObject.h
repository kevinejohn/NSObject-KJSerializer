//
//  SomeObject.h
//  Demo
//
//  Created by Kevin Johnson on 6/20/13.
//  Copyright (c) 2013 KevinEJohn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SomeObject : NSObject

@property (strong, nonatomic) NSString * some_string;
@property (strong, nonatomic) NSNumber * some_number;

@property (strong, nonatomic) UIImage  * some_image;
@property (strong, nonatomic) NSData   * some_data;

@end
