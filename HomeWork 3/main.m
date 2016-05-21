//
//  main.m
//  HomeWork 3
//
//  Created by Sergejs Lastovskis on 20/05/16.
//  Copyright © 2016 Sergejs Lastovskis. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    plus,
    minus,
    multiply,
    division
} CalculationType;

int calc(int firstNumber, int secondNumber, CalculationType type){
    switch (type) {
        case plus:
            return firstNumber + secondNumber;
        case minus:
            return firstNumber - secondNumber;
        case multiply:
            return firstNumber * secondNumber;
        case division:
            return firstNumber / secondNumber;
    }
    return 0;
}

int quadMultiplier(int number){
    
    return number * 4;
}

int factorial(int number){
    int r = 1;
    for (int i = 2; i <= number; ++i)
        r = r * i;
    return r;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int firstNumber = 11;
        int secondNumber = 33;
        NSLog(@"Результат %d + %d равен %d", firstNumber, secondNumber, calc(firstNumber,secondNumber,0));
        NSLog(@"Результат %d - %d равен %d", firstNumber, secondNumber, calc(firstNumber,secondNumber,1));
        NSLog(@"Результат %d * %d равен %d", firstNumber, secondNumber, calc(firstNumber,secondNumber,2));
        NSLog(@"Результат %d / %d равен %d", firstNumber, secondNumber, calc(firstNumber,secondNumber,3));
        
        int operations = 20;
        for (int i=1 ; i<=operations ; i++){
            if (quadMultiplier(i) == 16) break;
            if (quadMultiplier(i) % 3 == 0){
                NSLog(@"Число %d кратно 3", i);
                continue;
            }
            NSLog(@"Осталось %d итераций" , operations-i);
            
        }
        NSLog(@"Факториал от 10 = %d", factorial(10));
        
    }
    return 0;
}
