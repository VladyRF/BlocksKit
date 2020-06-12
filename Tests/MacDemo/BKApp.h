//
//  BKApp.h
//  BlocksKit Mac Demo
//
//  Contributed by Alex Gray.
//

#import <Cocoa/Cocoa.h>
#import <BlocksKitRawfish/BlocksKit.h>
#import <BlocksKitRawfish/A2DynamicDelegate.h>
#import <objc/runtime.h>

@interface 					 BKApp : NSObject

@property 	 			  NSTimer * tmr;
@property 	 A2DynamicDelegate * ddSrc;
@property IBOutlet NSTableView * tv;
@property 			  NSUInteger   displayCt;			@end

@interface  	 BKColorfulCell : NSCell				@end
