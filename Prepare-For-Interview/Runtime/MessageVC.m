/**
    iOS中的消息机制。消息传递的方式，消息传递，消息分发，消息转发。
 
    iOS消息传递机制：发送者sender 接受者receiver
 
    KVO:
    当对象中的某个属性值发生了改变，可以对这些值的观察者做出通知。
    条件：
    1.接收者必须知道发送者是谁
    2.接收者必须知道发送者的生命周期，因为再销毁发送者对象之前，要取消注册观察者。
    范围：
    消息传递过程可以是1对多的。
    备注：
    在CoreData中使用KVO，必须结合CoreData的故障机制，一旦CoreData存储出现故障，
    会触发其属性对应的观察者（即使这些属性值没有发生改变，与KVO的使用方式相反）。
 
    Notification：
    再不想关的两端代码中要想进行消息传递，Noti是非常好的一种机制。它可以对消息进行广播。
    条件：
    发送者和接收者都不需要知道双方是谁。这样可以在非常松耦合的模块间进行消息传递。
    范围：
 
 */

#import "MessageVC.h"

@interface MessageVC ()

@end

@implementation MessageVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
