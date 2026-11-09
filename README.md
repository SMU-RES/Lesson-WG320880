# 数据库应用技术（WG320880）

本仓库收录 C# 工程文件、SQL 查询练习、数据库安全与隐私保护的翻译文本，以及教材配套 MySQL 示例脚本。

- **课程代码**：`WG320880`

## 目录结构

```text
.
├── README.md
├── content/                                           # C# 工程文件
│   ├── Database/                                      # WinForms 数据查询、添加与删除界面的工程片段
│   │   ├── Database.csproj                            # .NET 8 Windows 工程、MySQL 包与 ODBC 引用配置
│   │   ├── Database.sln                               # Visual Studio 解决方案
│   │   ├── Form1.Designer.cs                           # 时间、经纬度、航向、航速等控件的界面定义
│   │   ├── Form1.resx                                  # 窗体资源文件
│   │   └── Program.cs                                 # WinForms 程序入口
│   └── ODBC/                                          # ODBC 连接类库
│       ├── Class1.cs                                  # 按当前系统用户名条件打开 ODBC 连接
│       ├── ODBC.csproj                                # .NET 8 类库与 Windows 兼容包配置
│       └── ODBC.sln                                   # Visual Studio 解决方案
├── homework/                                          # ORDER_ITEM 表查询练习
│   ├── 01_ORDER_ITEM全表查询.sql                       # 查询全部订单明细
│   ├── 02_ORDER_ITEM数量筛选.sql                       # 筛选 Quantity 大于 1 的明细
│   ├── 03_ORDER_ITEM指定订单计数.sql                   # 统计订单 2000 中 Quantity 大于 1 的行数
│   ├── 04_ORDER_ITEM数量排序.sql                       # 按 Quantity 升序查询
│   └── 05_ORDER_ITEM数量与SKU排序.sql                  # 按 Quantity 升序、SKU 降序查询
├── notes/
│   └── 数据库安全与隐私保护_翻译文本.md                # 含 GPT-Academic 标记的中英混排翻译文本
└── references/                                        # 教材配套示例，非本人源码
    └── MySQL/
        ├── Cape-Codd-Database/
        │   ├── DBP-e11-MySQL-Cape-Codd-Create-Tables.sql # 零售订单、商品、仓库与库存表定义
        │   └── DBP-e11-MySQL-Cape-Codd-Insert-Data.sql   # 上述表的教材示例数据
        └── View-Ridge-Gallery-Database/
            ├── VRG-Create-Tables.sql                   # 画廊数据库表定义
            ├── VRG-Create-Views.sql                    # 客户、兴趣与作品收益等视图
            ├── VRG-Create-Table-PriceList.sql           # 交易价格表定义
            ├── VRG-Create-Table-Modify-CUSTOMER-isProblemAccount.sql # 客户问题账户标记与测试
            ├── VRG-Create-Procedure-InsertCustomerAndInterests.sql   # 插入客户及艺术家兴趣关联
            ├── VRG-Create-Procedure-InsertCustomerWithTransaction.sql # 插入客户并完成作品交易
            ├── VRG-Create-Procedure-TransWithCheckIsProblemAccount.sql # 检查问题账户后更新价格表
            ├── VRG-Create-Procedure-UpdateCustomerName.sql # 修改客户姓名的存储过程
            ├── VRG-Create-TRANS_AfterInsertSetAskingPrice.sql # 插入交易后计算并写入标价
            ├── VRG-Create-TRANS_CheckIsProblemAccount.sql # 插入交易前检查问题账户的触发器
            ├── VRG-Insert-Final-Updates.sql             # 完成示例交易并补充作品数据
            └── VRG-Test-SP-UpdateCustomerName.sql       # 调用客户姓名修改过程的测试
```

## 使用说明

- 两个 C# 工程均有独立的 `.sln` 文件，可用 Visual Studio 打开。`Database.csproj` 目标为 `net8.0-windows`，启用 WinForms，引用 `MySql.Data 9.1.0`；`ODBC.csproj` 目标为 `net8.0`，引用 `Microsoft.Windows.Compatibility 8.0.10`。
- `Database` 现有文件缺少 `Form1.cs` 中的窗体与事件处理实现，以及工程引用的 `ODBC.dll`，无法按现有文件直接构建。
- `ODBC/Class1.cs` 的连接字符串由调用者传入；代码仅在 `Environment.UserName == "1"` 时尝试打开连接。
- SQL 练习中，01 使用当前数据库的 `order_item` 表，02–05 显式查询 `cap_cod.ORDER_ITEM`；执行前需要对应数据库和表。

## 资料来源说明

- `notes/` 中的翻译文本讨论身份认证、访问控制、加密、差分隐私等主题，保留原有正文；文件未附原文和正文提及的图表，归为学习整理文本。
- `references/MySQL/` 保留《Database Processing》第 11 版的 14 份教材配套示例脚本及原文件名，包含 Cape Codd 和 View Ridge Gallery 两组示例，不包含教材正文。
