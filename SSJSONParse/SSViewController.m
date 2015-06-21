//
//  SSViewController.m
//  SSJSONParse
//
//  Created by Shubham Sorte on 13/08/14.
//  Copyright (c) 2014 LUGManipal. All rights reserved.
//

#import "SSViewController.h"
#import "SSJSONModel.h"

@interface SSViewController () <SSJSONModelDelegate>
{
    NSArray * jsonData;
    SSJSONModel * jsonInstance1;
    SSJSONModel * jsonInstance2;
}

@end

@implementation SSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _checkConsoleLabel.hidden = YES;
    NSURL *mainUrl = [NSURL URLWithString:@"https://api.github.com/users/shubhsin"];
     NSURL *mainUrl2 = [NSURL URLWithString:@"https://google.com"];
    jsonInstance1 =[[SSJSONModel alloc] initWithDelegate:self];
    [jsonInstance1 sendRequestWithUrl:mainUrl];
    jsonInstance2 = [[SSJSONModel alloc]initWithDelegate:self];
    [jsonInstance2 sendRequestWithUrl:mainUrl2];
    
}

-(void)jsonRequestDidCompleteWithResponse:(id)response model:(SSJSONModel *)JSONModel
{
    if(JSONModel == jsonInstance1)
    {
        NSLog(@"dict is %@",jsonInstance1.parsedJsonData);
    }
    else if (JSONModel == jsonInstance2)
    {
        NSLog(@"dict 2 is %@",jsonInstance2.parsedJsonData);
    }
    _checkConsoleLabel.hidden = NO;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
