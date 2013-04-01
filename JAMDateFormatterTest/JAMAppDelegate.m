//
//  JAMAppDelegate.m
//  JAMDateFormatterTest
//
//  Created by Jerry Andrew Mayers on 3/29/13.
//  Copyright (c) 2013 Jerry Andrew Mayers
//
/*  JAMDateFormatterTest is licensed under MIT License Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

#import "JAMAppDelegate.h"

@interface JAMAppDelegate()

@property (strong) IBOutlet NSTextField *parsedDateText;
@property (strong) IBOutlet NSTextField *dateText;
@property (strong) IBOutlet NSTextField *formatText;


@end

@implementation JAMAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)parseClicked:(NSButton *)sender {
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:_formatText.stringValue];
    
    NSDate *date = [dateFormatter dateFromString:_dateText.stringValue];
    NSString *string = [dateFormatter stringFromDate:date];
    if (!string) {
        string = @"Could not parse the date with supplied format.";
    }
    [_parsedDateText setStringValue:string];
}
@end
