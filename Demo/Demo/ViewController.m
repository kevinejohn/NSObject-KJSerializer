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
    
    NSDictionary * dictionary = [object getDictionary];
    NSLog(@"Serialized: %@",dictionary.description);
    
    SomeObject * anotherObject = [SomeObject new];
    [anotherObject setDictionary:dictionary];
    NSLog(@"Deserialized: %@ %@", anotherObject.some_string, anotherObject.some_number.stringValue);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
