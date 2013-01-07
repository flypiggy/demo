#How we make tests

###Test 101
* 测试基本概念 --输入,输出期待值
* assert的使用
* 更多的assert

###Make better tests
* 最小测试环境
    * 独立的测试环境
    * testhelper
    * 测试夹具(制作测试数据)
* set up & tear down
* mock & stub
* 有效的组织测试

###Write test friendly codes
* 设计原则
    * 单一职责原则
    * 接口分离原则
    * 依赖倒转原则
* 常见错误
    * 构造函数做了实际的工作
    * 跟合作对象耦合太深
    * 容易被破坏的全局状态和单例模式
    * 类承担了太多的职责

###When & Where we need tests
人肉成本永远不足。项目永远有下一个特性等待开发，永远有下一个项目，而越到后来追写测试越困难，测试质量也越差。
好的测试是代码设计的保障，后写测试就已经会失掉一半的意义了


###Sth. else
* TDD&BDD
* CI
