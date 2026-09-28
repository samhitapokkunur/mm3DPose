#import "GoogleAnalyticsPlugin.h"
// Dispatch period in seconds
static const NSInteger kGANDispatchPeriodSec = 2;
@implementation GoogleAnalyticsPlugin
- (void) trackerWithTrackingId:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options
{
    NSString* accountId = [arguments objectAtIndex:1];
    [GAI sharedInstance].debug = YES;
    [GAI sharedInstance].dispatchInterval = kGANDispatchPeriodSec;
    [GAI sharedInstance].trackUncaughtExceptions = YES;
    [[GAI sharedInstance] trackerWithTrackingId:accountId];
}
- (void) trackEventWithCategory:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options
{
    NSString* category = @"User_40";//[options valueForKey:@"category"];
    NSString* action = @"Products Landing";//[options valueForKey:@"action"];
    NSString* label = @"View";//[options valueForKey:@"label"];
    NSNumber* value = [NSNumber numberWithInt:1];//[options valueForKey:@"value"];
    if (![[GAI sharedInstance].defaultTracker trackEventWithCategory:category
                                                          withAction:action
                                                           withLabel:label
                                                           withValue:value]) {
        // Handle error here
        NSLog(@"GoogleAnalyticsPlugin.trackEvent Error::");
        
    }
    NSLog(@"GoogleAnalyticsPlugin.trackEvent::%@, %@, %@, %@",category,action,label,value);
}

- (void) trackView:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options
{
    NSString* pageUri = [arguments objectAtIndex:1];
    if (![[GAI sharedInstance].defaultTracker trackView:pageUri]) {
        // TODO: Handle error here
    }
}

- (void) hitDispatched:(NSString *)hitString
{
    NSString* callback = [NSString stringWithFormat:@"window.plugins.googleAnalyticsPlugin.hitDispatched(%@);",  hitString];
    [ self.webView stringByEvaluatingJavaScriptFromString:callback];
}
@end