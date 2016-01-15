#import <UIKit/UIKit.h>

%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application {
	%orig;
	UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Hello World" message:@"Hello World" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
	[alert show];
	[alert release];
}

%end
