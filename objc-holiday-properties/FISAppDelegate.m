//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}
//DONE
- (NSArray *)holidaysInSeason:(NSString *)season
{
    NSArray *newArray = [self.database[season] allKeys];
    return newArray;
}
//SOMETHING IS WRONG,  GO BACK TO IT!!!!
- (NSArray *)suppliesInHoliday:(NSString *)holiday inSeason:(NSString *)season
{
    NSArray *newArray = self.database[season][holiday];
    return newArray;
}
//SOMETHING IS WRONG, GO BACK TO IT!!!!
- (BOOL)holiday:(NSString* )holiday isInSeason:(NSString *)season
{
    BOOL evaluate =[self.database[season] objectForKey:holiday];
    if(evaluate)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}
//DONE
- (BOOL)supply:(NSString *)supply isInHoliday:(NSString *)holiday inSeason:(NSString *)season
{
    BOOL evalute = [self.database[season][holiday] containsObject:supply];
    if (evalute)
    {
        return YES;
    }
    else
    {
        return NO; 
    }
}
//DONE
- (void)addHoliday:(NSString *)holiday toSeason:(NSString *)season
{
    self.database [season][holiday] = [[NSMutableArray alloc]init];
}
//DONE
- (void)addSupply:(NSString *)supply toHoliday:(NSString *)holiday inSeason:(NSString *)season
{
    [self.database [season][holiday] addObject: supply];
}

@end
