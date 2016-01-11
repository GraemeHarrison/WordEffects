//
//  main.m
//  WordEffects
//
//  Created by Graeme Harrison on 2016-01-11.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
//    return 0;
//}

int main () {
    
    //255 unit long array of characters
    char inputChars[255];
    
    printf("Input a string: ");
    // limts input to max 255 characters
    fgets(inputChars, 255, stdin);
    
    // print as a c string
    printf("Your string is %s\n", inputChars);
    
    // convert char array to an NSString object
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    // print NSString object
    NSLog(@"Input was %@", inputString);
    
    // convert inputString to uppercase and print it
    inputString = [inputString uppercaseString];
    NSLog(@"Make it louder: %@", inputString);
    
    // convert inputString to lowercase and print it
    inputString = [inputString lowercaseString];
    NSLog(@"Make it quieter: %@", inputString);
    
    return 0;
}