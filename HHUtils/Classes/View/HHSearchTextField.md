# HHSearchTextField
### 占位文字样式修改
```
UITextField *textfield = [[UITextField alloc]initWithFrame:CGRectMake(15, 66, 200, 50)];
[self.view addSubview:textfield];

NSDictionary *attr=[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor],NSForegroundColorAttributeName,[UIFont systemFontOfSize:15],NSFontAttributeName, nil];

NSAttributedString * attributeStr = [[NSAttributedString alloc]initWithString:@"我是一个字符串" attributes:attr];

textfield.attributedPlaceholder = attributeStr;
```
### 简单的修改占位文字字体颜色
```
[textfield setValue:<#占位文字颜色#> forKeyPath:@"_placeholderLabel.textColor"];
```
### 设置圆角
实在找不到什么有用的方法，所以干脆在UITextField控件底部添加一个view，设置底部的view的圆角和边线的样式。
### 输入框提示图片
设置提示图片的位置和大小：
子类化一个TextField，去复写它的一个方法来设置leftView的位置
```
- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
CGRect iconRect = [super leftViewRectForBounds:bounds];
iconRect.origin.x += 15; //向右偏15
return iconRect;
}
```
