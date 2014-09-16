//
//  block.c
//  Prepare-For-Interview
//
//  Created by LiuXiaoyu on 9/14/14.
//  Copyright (c) 2014 LiuXiaoyu. All rights reserved.
//

//把oc源码转换成C语言的命令
//clang -rewrite-objc xxx.c


#include <stdio.h>
#include "block.h"


int main() {
//    ^{printf("hello,World!\n"); }();
    
//__NSConcreteStackBlock
//    int a = 100;
//    void (^block)(void) = ^ {
//        printf("%d\n", a);
//    };
//    
//    block();
    
//    __block int a = 100;
//    void (^block)(void) = ^ {
//        printf("%d\n", a);
//        a = 1023;
//    };
//    
//    block();

//    __NSConcreteMallocBlock
//    @autoreleasepool {
//        
//        int a = 100;
//        void (^block)(void) = ^ {
//            printf("%d\n", a);
//        };
//        
//        block();
//        
//        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
//    }
    
    return 0;
}