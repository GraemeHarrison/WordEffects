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
    NSString *inputString = [[NSString stringWithUTF8String:inputChars] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    
    while (YES) {
        NSLog(@"What would you like to do with your string?\n 1) Uppercase it\n 2) Lowercase it\n 3) Numberize it\n 4) Canadianize it\n 5) Respond to it\n 6) De-Space-It");
        int optionNum = 0;
        scanf("%d", &optionNum);
        
        if (optionNum == 1) {
            // convert inputString to uppercase and print it
            //inputString = [inputString uppercaseString];
            NSLog(@"Make it louder: %@", [inputString uppercaseString]);
        
        } else if (optionNum == 2){
            // convert inputString to lowercase and print it
            //inputString = [inputString lowercaseString];
            NSLog(@"Make it quieter: %@", [inputString lowercaseString]);
            
        } else if (optionNum == 3){
            // If string is a number do this:
            if ([inputString rangeOfCharacterFromSet:[NSCharacterSet characterSetWithCharactersInString:@"0123456789"]].location != NSNotFound) {
                
                // If inputString is number, convert it to integer
                int inputInt = [inputString intValue];
                NSLog(@"Conversion of NSString '%d' to Int was successful", inputInt);
                
                // If string is not a number do this:
            } else {
                
                // print NSString object
                NSLog(@"Input '%@' is not a number and thus cannot be converted into an Int", inputString);
            }
            
        } else if (optionNum == 4){
            // Canadianize string
            NSString *canada = @" eh?";
            //inputString = [inputString stringByAppendingString:canada];
            NSLog(@"Make it Canadian: %@", [inputString stringByAppendingString:canada]);
            
        } else if (optionNum == 5){
            // Respond to quesitons and exclamations
            if ([inputString hasSuffix:@"?"]) {
                NSLog(@"I don't know");
            } else if ([inputString hasSuffix:@"!"])
                NSLog(@"Whoa, calm down!");
            
        } else if (optionNum == 6){
            // Replace all spaces with "-"
            NSLog(@"%@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
            
        } else {
            NSLog(@"Please make sure your input is a number");
        }
    }
    return 0;
}