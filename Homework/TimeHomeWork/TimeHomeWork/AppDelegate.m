//
//  AppDelegate.m
//  TimeHomeWork
//
//  Created by Nikita Shumilin on 19.01.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"
#import "NShStudent.h"

@interface AppDelegate ()

@property (strong, nonatomic) NSDate *gloabalDate;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSMutableArray *arrayOfStudents = [[NSMutableArray alloc] init];
    
#pragma mark - Add students to array
    for (int count = 1; count < 31; count++) {
        NShStudent *student = [[NShStudent alloc] init];
        student.number = count;
        
        [arrayOfStudents addObject:student];
    }
    
#pragma mark - Set birthday for students
    for (NShStudent *student in arrayOfStudents) {
        NSDate *date = [NSDate date];
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSDateComponents *dateComponents =
        [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay
                    fromDate:date];
        [dateComponents setYear:[dateComponents year] - student.age];
        [dateComponents setMonth:arc4random() % 12];
        [dateComponents setDay:arc4random() % [dateComponents day]];

        student.dateOfBirth = [calendar dateFromComponents:dateComponents];

//        NSLog(@"Student %li has birthday at %@", student.number, [student dateToString:student.dateOfBirth]);
    }
    
    NSLog(@"--------------------------------------------------------------------");
    
#pragma mark - Sort students by birthday year from the youngest
    NSArray *sortedArrayOfStudentsByDate;
    NSArray *arrayOfFirstNames = [NSArray arrayWithObjects:@"Nikita", @"Elena", @"Ivan", @"Egor", @"Ilya", @"Yury", @"Anastasia", @"Vika", nil];
    NSArray *arrayOfSecondNames = [NSArray arrayWithObjects:@"Brown", @"Black", @"White", @"Knut", @"Jackson", @"Potter", nil];
    
    sortedArrayOfStudentsByDate = [arrayOfStudents sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        NSDate *first = [(NShStudent *) obj1 dateOfBirth];
        NSDate *second = [(NShStudent *) obj2 dateOfBirth];
        return [second compare:first];
    }];
    
#pragma mark - Set first name and second name to students
    // set names and surnames to students
    for (NShStudent *student in sortedArrayOfStudentsByDate) {
        student.firstName = [arrayOfFirstNames objectAtIndex:arc4random() % arrayOfFirstNames.count];
        student.secondName = [arrayOfSecondNames objectAtIndex:arc4random() % arrayOfSecondNames.count];
        
//        NSLog(@"Sorted Array by date: Student %2ld  %@ %@ has birthday at %@", student.number, student.firstName, student.secondName, [student dateToString:student.dateOfBirth]);
    }
    
#pragma mark - Sorted Students by their Names
    NSArray *sortedArrayOfStudentsByName;
    
    sortedArrayOfStudentsByName = [sortedArrayOfStudentsByDate sortedArrayUsingComparator:^NSComparisonResult(NShStudent *obj1, NShStudent *obj2) {
        
        if (obj1.firstName < obj2.firstName) {
            return [obj1.firstName compare: obj2.firstName];
        } else if (obj1.secondName < obj2.secondName) {
            return [obj1.secondName compare: obj2.secondName];
        } else if (obj1.dateOfBirth < obj2.dateOfBirth) {
            return [obj1.dateOfBirth compare: obj2.dateOfBirth];
        } else {
            return NSOrderedAscending;
        }
    }];
    
    for (NShStudent *student in sortedArrayOfStudentsByName) {
        NSLog(@"Sorted Array by name: Student %2ld  %@ %@ has birthday at %@", student.number, student.firstName, student.secondName, [student dateToString:student.dateOfBirth]);
    }
    
    NSLog(@"----------------------------------------------------------");
    
#pragma mark - Happy Birthday for Students
    
    // Create a dictionary of students for sending in timer's selector.
    NSMutableDictionary *studentsDictionary = [[NSMutableDictionary alloc] init];
    
    for (NShStudent *student in sortedArrayOfStudentsByName) {
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSDateComponents *dateComponents = [calendar components:NSCalendarUnitDay | NSCalendarUnitMonth fromDate:student.dateOfBirth];
        
        [studentsDictionary setObject:student forKey:[NSString stringWithFormat:@"%ld %ld", [dateComponents month], [dateComponents day]]];
    }
    
    self.gloabalDate = [[NSDate alloc] init];
    
//    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(timerTest:) userInfo:studentsDictionary repeats:YES];
    
#pragma mark - Age differents of Students
    
    NSString *ageDifference = [[NSString alloc] init];
    NShStudent *oldestStudent = sortedArrayOfStudentsByDate.lastObject;
    NShStudent *youngestStudent = sortedArrayOfStudentsByDate.firstObject;
    
    NSCalendar *calendarForDiff = [NSCalendar currentCalendar];
    NSDateComponents *dateComponentsForDiff =
    [calendarForDiff components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitWeekday | NSCalendarUnitYear
                       fromDate:oldestStudent.dateOfBirth
                         toDate:youngestStudent.dateOfBirth
                        options:0];
    
    NSLog(@"%@", [ageDifference stringByAppendingFormat:@"Difference between the oldest student %@ and %@ is %ld days, %ld weekdays, %ld month, %ld years", oldestStudent, youngestStudent, [dateComponentsForDiff day], [dateComponentsForDiff weekday], [dateComponentsForDiff month], [dateComponentsForDiff year]]);
    
#pragma mark - Day of the week for each first day of the week in the current year
    
    NSInteger daysCount = 0;
    NSDate *date = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateFormatter *weekFormatter = [[NSDateFormatter alloc] init];
    [weekFormatter setDateFormat:@"EEEE"];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd/MM/yyyy"];
    NSDateComponents *dateComponents = [calendar components:NSCalendarUnitYear fromDate:date];
    
    for (NSInteger i = 1; i <= 12; i++) {
        [dateComponents setDay:1];
        [dateComponents setMonth:i];
        
        NSLog(@"Date %@ weekday was %@", [dateFormatter stringFromDate:[calendar dateFromComponents:dateComponents]],
                                         [weekFormatter stringFromDate:[calendar dateFromComponents:dateComponents]]);
    }
    
#pragma mark - Day and Month for every Sunday in the current year
    
    NSDateComponents *sundayComponents = [[NSDateComponents alloc] init];
    
    [sundayComponents setYear:2020];
    [sundayComponents setMonth:12];
    [sundayComponents setDay:31];
    
    NSDate *endOfTheYear = [calendar dateFromComponents:sundayComponents];
    
    [sundayComponents setMonth:1];
    [sundayComponents setDay:1];
    
    NSDate *startOfTheYear = [calendar dateFromComponents:sundayComponents];
    
    while (![startOfTheYear isEqualToDate:endOfTheYear]) {
        startOfTheYear = [startOfTheYear dateByAddingTimeInterval:24 * 60 * 60];
        sundayComponents = [calendar components:NSCalendarUnitMonth | NSCalendarUnitWeekday | NSCalendarUnitDay fromDate:startOfTheYear];

        if ([sundayComponents weekday] == 1) {
            NSLog(@"%2ld Sunday of %2ld day of %2ld month", daysCount++, [sundayComponents day], [sundayComponents month]);
        }
    }
    
#pragma mark - Number of working days in the current year
    
    NSInteger workingDaysInTheYear = 0;
    NSDate *workingDate = [NSDate date];
    NSCalendar *workingCalendar = [NSCalendar currentCalendar];
    NSDateComponents *componentsForWoringDays = [workingCalendar components:NSCalendarUnitYear | NSCalendarUnitMonth fromDate:workingDate];
    NSInteger year = [componentsForWoringDays year];
    
    for (NSInteger currentMonth = 1; currentMonth <= 12; currentMonth++) {
        NSInteger weekDay= 0;
        NSInteger workingDaysInMonth = 0;
        
        [componentsForWoringDays setMonth:currentMonth];
        [componentsForWoringDays setYear:year];
        workingDate = [workingCalendar dateFromComponents:componentsForWoringDays];
        
        NSRange monthDays = [workingCalendar rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:workingDate];
        NSInteger daysInMonth = monthDays.length;
        
        for (NSInteger day = 0; day < daysInMonth; day++) {
            componentsForWoringDays = [workingCalendar components:NSCalendarUnitWeekday fromDate:workingDate];
            weekDay = [componentsForWoringDays weekday];
            workingDate = [workingDate dateByAddingTimeInterval:24 * 60 * 60];
            
            if (weekDay != 7 && weekDay != 1) {
                workingDaysInMonth++;
                workingDaysInTheYear++;
            }
        }
        
        NSLog(@"There are %ld woring days in %ld month", workingDaysInMonth, currentMonth);
    }
    
    NSLog(@"Working days in this year: %ld", workingDaysInTheYear);
    
    return YES;
}

- (void) timerTest: (NSTimer *) timer {
    NSTimeInterval secondsPerDay = 24 * 60 * 60;
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [calendar components:NSCalendarUnitMonth | NSCalendarUnitDay fromDate:self.gloabalDate];
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithDictionary:timer.userInfo];
    NShStudent *student = nil;
    
    self.gloabalDate = [self.gloabalDate dateByAddingTimeInterval:+secondsPerDay];
    
    NSLog(@"Month: %ld, day: %ld", [dateComponents month], [dateComponents day]);
    
    NSString *keyString = [NSString stringWithFormat:@"%ld %ld", [dateComponents month], [dateComponents day]];
    
    student = [dictionary objectForKey:keyString];
    
    if (student) {
        NSLog(@"HAPPY BIRTHDAY!!!");
        NSLog(@"%@", student);
    }
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
