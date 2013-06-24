//
//  ViewController.m
//  Demo
//
//  Created by Kevin Johnson on 6/20/13.
//  Copyright (c) 2013 KevinEJohn. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+KJSerializer.h"
#import "SomeObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    SomeObject * object = [SomeObject new];
    object.some_string = @"Hello World";
    object.some_number = [NSNumber numberWithInt:7];
    object.some_image = [UIImage imageNamed:@"linux.png"];
    object.some_data = [@"some data string" dataUsingEncoding:NSUTF8StringEncoding];
    
    NSDictionary * dictionary = [object getDictionary];
    NSLog(@"Serialized: %@",dictionary.description);
    
    SomeObject * anotherObject = [SomeObject new];
    [anotherObject setDictionary:dictionary];
    NSLog(@"Deserialized: %@ %@ %@ %@", anotherObject.some_string, anotherObject.some_number.stringValue, anotherObject.some_image.description, anotherObject.some_data.description);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
