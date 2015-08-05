//
//  main.m
//  Binary Search
//
//  Created by Yazan Khayyat on 2015-08-05.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *numberArray = @[@1, @9, @17, @22, @27, @30, @35, @42];
        
        NSNumber *searchNum = @30;
        
        NSUInteger mid;
        NSUInteger min = 0;
        NSUInteger max = [numberArray count] - 1;
        
        BOOL found = NO;
        
        while (min <= max) {
            
            mid = (min + max)/2;
            
            if ([searchNum intValue] == [numberArray[mid] intValue])
            {
                NSLog(@"We found the number! It is at index %lu", mid);
                
                found = YES;
                break;
            }
            else if ([searchNum intValue] < [numberArray[mid] intValue])
            {
                max = mid - 1;
            }
            else if ([searchNum intValue] > [numberArray[mid] intValue])
            {
                min = mid + 1;
                
            }
            
        }
        
        if (!found)
        {
            NSLog(@"-1");
        }
        
        return 0;
    }
}
