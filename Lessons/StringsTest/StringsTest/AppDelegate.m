//
//  AppDelegate.m
//  StringsTest
//
//  Created by Nikita Shumilin on 02.01.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /*
    NSString *string1 = @"String 1";
    NSString *string2 = @"String 2";
    
    NSArray *array = [NSArray arrayWithObjects: string1, string2, nil];
    
    for (NSString *string in array) {
        if ([string isEqualToString:@"String 1"]) {
            NSLog(@"index = %lu", [array indexOfObject:string]);
        }
    }
    */
    
    /*
    NSString *string = @"Hello, World!";
    
    NSLog(@"%@", string);
    
//    NSRange range = [string rangeOfString:@"World"];
//    NSRange range = [string rangeOfString:@"world" options:NSCaseInsensitiveSearch];
    NSRange range = [string rangeOfString:@"world" options:NSCaseInsensitiveSearch | NSBackwardsSearch];
    
    if (range.location != NSNotFound) {
        NSLog(@"range = %@", NSStringFromRange(range));
    } else {
        NSLog(@"Word isn't found");
    }
    */
    
    NSString *text = @"Overview. The NSString class and its mutable subclass, NSMutableString, provide an extensive set of APIs for working with strings, including methods for comparing, searching, and modifying strings. NSString objects are used throughout Foundation and other Cocoa frameworks, serving as the basis for all textual and linguistic functionality on the platform. NSString is toll-free bridged with its Core Foundation counterpart, CFString. See Toll-Free Bridging for more information. String Objects. An NSString object encodes a Unicode-compliant text string, represented as a sequence of UTF–16 code units. All lengths, character indexes, and ranges are expressed in terms of 16-bit platform-endian values, with index values starting at 0. An NSString object can be initialized from or written to a C buffer, an NSData object, or the contents of an NSURL. It can also be encoded and decoded to and from ASCII, UTF–8, UTF–16, UTF–32, or any other string encoding represented by NSStringEncoding. Note. An immutable string is a text string that is defined when it is created and subsequently cannot be changed. An immutable string is implemented as an array of UTF–16 code units (in other words, a text string). To create and manage an immutable string, use the NSString class. To construct and manage a string that can be changed after it has been created, use NSMutableString. The objects you create using NSString and NSMutableString are referred to as string objects (or, when no confusion will result, merely as strings). The term C string refers to the standard char * type. Because of the nature of class clusters, string objects aren’t actual instances of the NSString or NSMutableString classes but of one of their private subclasses. Although a string object’s class is private, its interface is public, as declared by these abstract superclasses, NSString and NSMutableString. The string classes adopt the NSCopying and NSMutableCopying protocols, making it convenient to convert a string of one type to the other. Understanding Characters. A string object presents itself as a sequence of UTF–16 code units. You can determine how many UTF-16 code units a string object contains with the length method and can retrieve a specific UTF-16 code unit with the character(at:) method. These two “primitive” methods provide basic access to a string object. Most use of strings, however, is at a higher level, with the strings being treated as single entities: You compare strings against one another, search them for substrings, combine them into new strings, and so on. If you need to access string objects character by character, you must understand the Unicode character encoding, specifically issues related to composed character sequences. For details see The Unicode Standard, Version 4.0 (The Unicode Consortium, Boston: Addison-Wesley, 2003, ISBN 0-321-18578-1) and the Unicode Consortium web site: http://www.unicode.org/. See also Characters and Grapheme Clusters in String Programming Guide. Localized string comparisons are based on the Unicode Collation Algorithm, as tailored for different languages by CLDR (Common Locale Data Repository). Both are projects of the Unicode Consortium. Unicode is a registered trademark of Unicode, Inc. Interpreting UTF-16-Encoded Data. When creating an NSString object from a UTF-16-encoded string (or a byte stream interpreted as UTF-16), if the byte order is not otherwise specified, NSString assumes that the UTF-16 characters are big-endian, unless there is a BOM (byte-order mark), in which case the BOM dictates the byte order. When creating an NSString object from an array of unichar values, the returned string is always native-endian, since the array always contains UTF–16 code units in native byte order. Subclassing Notes. It is possible to subclass NSString (and NSMutableString), but doing so requires providing storage facilities for the string (which is not inherited by subclasses) and implementing two primitive methods. The abstract NSString and NSMutableString classes are the public interface of a class cluster consisting mostly of private, concrete classes that create and return a string object appropriate for a given situation. Making your own concrete subclass of this cluster imposes certain requirements (discussed in Methods to Override). Make sure your reasons for subclassing NSString are valid. Instances of your subclass should represent a string and not something else. Thus the only attributes the subclass should have are the length of the character buffer it’s managing and access to individual characters in the buffer. Valid reasons for making a subclass of NSString include providing a different backing store (perhaps for better performance) or implementing some aspect of object behavior differently, such as memory management. If your purpose is to add non-essential attributes or metadata to your subclass of NSString, a better alternative would be object composition (see Alternatives to Subclassing). Cocoa already provides an example of this with the NSAttributedString class. Methods to Override. Any subclass of NSString must override the primitive instance methods length and character(at:). These methods must operate on the backing store that you provide for the characters of the string. For this backing store you can use a static array, a dynamically allocated buffer, a standard NSString object, or some other data type or mechanism. You may also choose to override, partially or fully, any other NSString method for which you want to provide an alternative implementation. For example, for better performance it is recommended that you override getCharacters(_:range:) and give it a faster implementation. You might want to implement an initializer for your subclass that is suited to the backing store that the subclass is managing. The NSString class does not have a designated initializer, so your initializer need only invoke the init() method of super. The NSString class adopts the NSCopying, NSMutableCopying, and NSCoding protocols; if you want instances of your own custom subclass created from copying or coding, override the methods in these protocols. Alternatives to Subclassing. Often a better and easier alternative to making a subclass of NSString—or of any other abstract, public class of a class cluster, for that matter—is object composition. This is especially the case when your intent is to add to the subclass metadata or some other attribute that is not essential to a string object. In object composition, you would have an NSString object as one instance variable of your custom class (typically a subclass of NSObject) and one or more instance variables that store the metadata that you want for the custom object. Then just design your subclass interface to include accessor methods for the embedded string object and the metadata. If the behavior you want to add supplements that of the existing class, you could write a category on NSString. Keep in mind, however, that this category will be in effect for all instances of NSString that you use, and this might have unintended consequences.";
    
//    text = [text substringToIndex:10];
//    text = [text substringWithRange:NSMakeRange(10, 10)];
    
    // Вырезать текст до определённого участка
    /*
    NSRange range = [text rangeOfString:@"String Objects."];
    
    if (range.location != NSNotFound) {
        text = [text substringToIndex:range.location];
    } else {
        NSLog(@"Text not found");
    }
    */
    
//    NSLog(@"%@", text);
    
    /*
    // Поиск количество встечающихся слов
    NSRange searchRange = NSMakeRange(0, [text length]);
    NSInteger counter = 0;
    
    while (YES) {
        NSRange range = [text rangeOfString:@"NSString" options:0 range:searchRange];
        
        if (range.location != NSNotFound) {
            NSInteger index = range.location + range.length;
            
            searchRange.location = index;
            searchRange.length = [text length] - index;
            
            NSLog(@"%@", NSStringFromRange(range));
            
            counter += 1;
//            NSLog(@"Count = %ld", (long)counter);
            
        } else {
            break;
        }
    }
    
    NSLog(@"Counter = %ld", counter);
    */
    
    // Замена слова в тексте
//    text = [text stringByReplacingOccurrencesOfString:@"NSString" withString:@"BIBA"];
    
    // Замена букв на заглавные
//    text = [text uppercaseString];
    
    // Замена букв на прописные
//    text = [text lowercaseString];
    
    // Каждое слово с заглавной
//    text = [text capitalizedString];
    
//    NSLog(@"%@", text);
    
    // Конвертирует строку в целочисленное значение
//    NSLog(@"%d", [@"512" intValue]);
    
    /*
    // Заменяет символ на другой
    text = [text stringByReplacingOccurrencesOfString:@"." withString:@" "];
    text = [text stringByReplacingOccurrencesOfString:@"," withString:@" "];
    
    // Превращает каждое слово в строке в элемент массива
    NSArray *array = [text componentsSeparatedByString:@" "];
    
    NSLog(@"%@", array);
    
    // Все элементы массива объединяются с помощью заданного символа
    text = [array componentsJoinedByString:@"_"];
    
    NSLog(@"%@", text);
    */
    
    NSString *string1 = @"Hello ";
    NSString *string2 = @"World!";
    NSString *string3 = [string1 stringByAppendingString:string2];
    
    NSLog(@"%@ = %@%@", string3, string1, string2);
    
    return YES;
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
