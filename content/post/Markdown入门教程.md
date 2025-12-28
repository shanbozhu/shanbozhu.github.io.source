<h1 style="text-align:center; font-family:Times New Roman; color:blue;">
  Markdown<span style="font-family:SimSun;">入门教程</span>
</h1>

<h2 style="text-align:center; font-family:Times New Roman; font-size:20pt;">
  Ambrum
</h2>

## 目录
- [一、准备工作](#一准备工作)
- [二、基本语法](#二基本语法)
- [三、其他操作](#三其他操作)
- [四、导出为PDF文档](#四导出为pdf文档)

---

## 一、准备工作
1. **安装 VS Code**  
   [vscode 官网下载地址](https://code.visualstudio.com/)
2. **下载必要的插件**
   - Markdown Preview Enhanced
   - Paste Image
3. **创建 `.md` 文档，打开同步预览功能，开始编辑**

---

## 二、基本语法
1. **标题**
   # Heading level 1
   ## Heading level 2
   ### Heading level 3
   #### Heading level 4
   ##### Heading level 5
   ###### Heading level 6
   <h1>Heading level 1</h1>
   <h2>Heading level 2</h2>
   <h3>Heading level 3</h3>
   <h4>Heading level 4</h4>
   <h5>Heading level 5</h5>
   <h6>Heading level 6</h6>

   Heading level 1
   =
   Heading level 2
   -
2. **段落**  
   I really like using Markdown.

   I think I'll use it to format all of my documents from now on.

   <p>I really like using Markdown.</p>

   <p>I think I'll use it to format all of my documents from now on.</p>
3. **换行**  
   在一行的末尾添加两个或多个空格，然后按回车键，即可创建一个换行。  
   This is the first line.  
   And this is the second line.
   <p>This is the first line.<br>
   And this is the second line.</p>
4. **强调**  
   I just love **bold text**.  
   I just love __bold text__.  
   Love**is**bold  
   I just love <strong>bold text</strong>.  
   I just love <strong>bold text</strong>.  
   Love<strong>is</strong>bold
2. **引用**
   > 引用内容  
   > 引用内容
   > > 嵌套引用内容
   > > > 嵌套引用内容
3. **列表**
   1. 无序列表
   - 列表1
   + 列表2
   * 列表3
     * 列表3
     * 列表3
       * 列表3
       * 列表3
   2. 有序列表
   3. TodoList
      - [x] a
      - [ ] b
      - [x] c
4. **表格**
   | 左对齐 | 居中对齐 | 右对齐 |
   |:-|:-:|-:|
   | a | b | c |
5. **段落**
   - 换行：`两个空格后回车`或`空一行`
   - 分割线：3个`***`或`---`
     ***
     ---
   - 字体
     | 字体 | 代码 |
     |:-:|:-:|
     | 斜体 | *斜体* |
     | 粗体 | **粗体** |
     | 斜粗体 | ***斜粗体*** |
     | 删除线 | ~~~~ |
     | 下划线 | <u>下划线</u> |
     | 高亮 | ==高亮== |
6. **代码**
```C {.line-numbers}
#include<iostream>
using namespace std;
int main() {
    print("hello world");
}
```
`print( "hello wor1d);`

7. **超链接**
- [更多使用教程可以参考网站](https://www.runoob.com/markdown/md-link.html)
- 更多使用教程可以参考网站[^1]
- 更多使用教程可以参考网站[^2]
8. **图片**
- 使用图床保存图片，推荐：[路过图床](https://imgse.com/)
- 使用 Markdown 语法插入图片（图片不支持跳转）：
  ![pFZHwAe.jpg](https://s11.ax1x.com/2024/01/23/pFZHwAe.jpg)
- 使用 Markdown 语法插入图片（图片支持跳转）：
  [![pFZHwAe.jpg](https://s11.ax1x.com/2024/01/23/pFZHwAe.jpg)](https://imgse.com/i/pFZHwAe)
- 使用 HTML 控制图片大小和位置（图片支持跳转）：
  <div align="center">
    <a href="https://imgse.com/i/pFZHwAe">
      <img src="https://s11.ax1x.com/2024/01/23/pFZHwAe.jpg" alt="pFZHwAe.jpg" width="60%" />
    </a>
  </div>
9. **上标、下标**
30^th^
H~2~O

---

## 三、其他操作
1. **插入latex公式**
- 行内显示公式:$f(x)=ax+b$
- 块内显示数学表达式:
$$
\begin{Bmatrix}
a & b \\
c & d
\end{Bmatrix}
$$

---

## 四、导出为PDF文档
- open in Browser -> 手动另存为PDF文档

[^1]:[更多使用教程可以参考网站](https://www.runoob.com/markdown/md-link.html)
[^2]:[更多使用教程可以参考网站](https://www.runoob.com/markdown/md-link.html)