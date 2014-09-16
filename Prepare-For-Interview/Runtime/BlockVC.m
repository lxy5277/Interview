/**
    Block的一些知识
 */

#import "BlockVC.h"
#import <objc/runtime.h>

#pragma mark
#pragma mark -- Block的数据结构定义

struct Block_descriptor {
    unsigned long int reserved;
    unsigned long int size;
    void (*copy)(void *dst,void *src);
    void (*dispose)(void *);
};

struct Block_layout {
    void *isa;//isa 指针，所有对象都有该指针。
    int flags;//用于按bit位表示一些block的附加信息
    int reserved;//保留变量
    void (*invoke)(void *,...);//函数指针，指向具体的block实现的函数调用地址
    struct Block_descriptor *descriptor;//表示该block的附加描述信息。
    /*Imported variables*/
    //capture过来的变量，block能够访问这些外部的变量，就是因为将这些变量复制到了结构体中。
};

@interface BlockVC ()

@end

@implementation BlockVC

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
