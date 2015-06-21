##SSJSONParse

Its the simplest library for parsing JSON Array or Dictionary.
Mostly meant for begineer iOS Developers.

##Features

1. Parse JSON data in only 3 lines.
2. The library also tells you whether the response is a valid JSON, if it is then whether its an object or an array.

##Usage

1. Add the file SSJSONModel.h and SSJSONModel.m in your Xcode project.Add `<SSJSONModel>` in your protocols.
2. `#import SSJSONModel.h` in your ViewController file where you need the JSON Data.
3. Make an instance of SSJSONModel
```objective-c
    SSJSONModel * jsonInstance1;
jsonInstance =[[SSJSONModel alloc] initWithDelegate:self];
[jsonInstance sendRequestWithUrl:@"your url"];
```
And implement this method
```objective-c
-(void)jsonRequestDidCompleteWithResponse:(id)response model:(SSJSONModel *)JSONModel
{
    if(JSONModel == jsonInstance1)
    {
        NSLog(@"dict is %@",jsonInstance.parsedJsonData);
    }
}
<<<<<<< HEAD
=======
}
>>>>>>> 900c74f5552a7d97c174fa650874488409fa6b29
```
*Your `jsonInstance1.parsedJsonData` is the data you need. Assign it to a NSDictionary or NSArray instance according to whatever your data type is.



