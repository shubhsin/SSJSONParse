##SSJSONParse

Its the simplest library for parsing JSON Array or Dictionary.
Mostly meant for begineer iOS Developers.

##Usage

1. Add the file SSJSONModel.h and SSJSONModel.m in your Xcode project.
2. `#import SSJSONModel.h` in your ViewController file where you need the JSON Data.
3. Make an instance of SSJSONModel
```objective-c
    SSJSONModel * jsonInstance1;
jsonInstance1 =[[SSJSONModel alloc] initWithDelegate:self];
[jsonInstance1 sendRequestWithUrl:@"your url"];
```
4. Implement this method
```objective-c
- (void)jsonRequestDidCompleteWithDict:(NSDictionary *)dict model:(SSJSONModel *)JSONModel
{
if(JSONModel == jsonInstance1)
{
NSLog(@"dict is %@",jsonInstance1.parsedJsonData);
}
}
```
*Your jsonInstance1.parsedJsonData is the data you need. Assign it to a NSDictionary or NSArray instance according to whatever your data type is.



