import 'package:dynamic_view/widgets/models/advance_widgets.dart';

final kMarkdownSamples = MarkdownData("""
# 一级标题
## 二级标题
### 三级标题
#### 四级标题
##### 五级标题
###### 六级标题

**这是粗体** *这是斜体* ~~这是删除线~~

粗体嵌套斜体：**这个文本 _非常_ 重要**
全部粗体+斜体：***所有文本都很重要***

> 引用文本

内联代码 `code`

代码块：
```dart
print('Hello World');
```

参见 [Basic writing and formatting syntax](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#links).

![This is an image](http://bing.getlove.cn/bingImage)

- George Washington
- John Adams
- Thomas Jefferson

1. James Madison
2. James Monroe
3. John Quincy Adams

1. First list item
   - First nested list item
     - Second nested list item
     
- [x] #739
- [ ] https://github.com/octo-org/octo-repo/issues/740
- [ ] Add delight to the experience when all tasks are complete :tada:

@octocat :+1: This PR looks great - it's ready to merge! :shipit:
""");