# 充电桩调度系统设计方案相关文档以及资料介绍

## 相关信息

    Author：翁岳川
    api设计方案仅仅作为参考，如果大家有问题或者有更好的方案可以更多的交流

## 文档介绍

- 充电桩调度客户端_api.pdf
  - 关于客户端当中所使用的api的定义
- 充电桩调度管理员端_api.pdf
  - 关于管理员端所使用的api的定义
- chargemaster.sql
  - 用于创建mysql当中的表
  - 说明：事实上只是作为大家开发的参考，只需要api的接口请求和返回的信息相同我们便可以完成这个大作业

## 方案介绍

- 通信和数据交换：基于 HTTP 协议进行开发，采用json来进行前后端数据的交互
- 结构划分：利用后端来进行数据查找和修改，前端分为客户端和管理员端，之后如果需要我们模拟充电桩，会继续进行设计
- 难点：
  - 其中当用户发送请求的时候需要建立websocket连接，这个过程是相对复杂的，这里建议参考网上的资料，上手并不困难。
  - 针对一些没有前后端开发经验，或者没有做过前后端交互的同学来说会有一些困难，可能有很小很小的学习成本。

## 相关问题解答

    Q1: 使用HTTP协议是不是一定就是WEB开发了，一定是B/S模式，不能做C/S模式了？

    A1：并不是这样的，我们当前所用的大部分应用（包括手机中的 APP ，微信小程序，网页，桌面应用等），基本都是使用 HTTP 协议进行开发的，而且各种语言都内置了 HTTP 的包，并且有一些前人写的解析 json 的工具，所以大家无论是做手机 APP 还是做小程序，甚至用 QT 结合 C++ 或者 Python 开发一个桌面应用，都是能使用 HTTP 的。

    Q2：为什么使用WebSocket？

    A2：这个考量是基于现有的需求的，因为需求当中需要我们在车辆排队到的时候，服务器调度完成然后叫号，由于HTTP协议是一种**请求 - 响应**的形式，如果不建立实时连接，那么就不能通过服务器端主动向用户发送信息，这样显然是不合适的，所以使用websocket建立持久化连接，减少因为我们使用轮询导致的性能的损失，同时也符合需求。

## 更新日志

**2023-05-10** 更新了接口文档，并且将文档更换成Markdown格式

**2023-05-10** 更新了数据库文件，并且根据实际需求进行了一定的修改

**2023-05-10** 增加了对接方式，其中包括golang代码，Python代码，C++代码，nodejs代码，php代码

**2023-05-10** 增加了代码实例，使用java-SpringBoot
