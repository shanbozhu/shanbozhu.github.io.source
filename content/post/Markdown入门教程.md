<h1 style="text-align:center; font-family:Times New Roman; color:blue;">
  Markdown<span style="font-family:SimSun;">入门教程</span>
</h1>

<h2 style="text-align:center; font-family:Times New Roman; font-size:20pt;">
  shanbo
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
   <h1>Heading level 1</h1>

   ## Heading level 2
   <h2>Heading level 2</h2>

   ### Heading level 3
   <h3>Heading level 3</h3>

   #### Heading level 4
   <h4>Heading level 4</h4>

   ##### Heading level 5
   <h5>Heading level 5</h5>

   ###### Heading level 6
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
   I just love <strong>bold text</strong>.

   I just love __bold text__.  
   I just love <strong>bold text</strong>.

   Love**is**bold  
   Love<strong>is</strong>bold

   Italicized text is the *cat's meow*.  
   Italicized text is the <em>cat's meow</em>.

   Italicized text is the _cat's meow_.  
   Italicized text is the <em>cat's meow</em>.

   A*cat*meow  
   A<em>cat</em>meow

   This text is ***really important***.  
   This text is <strong><em>really important</em></strong>.

   This text is ___really important___.  
   This text is <strong><em>really important</em></strong>.

   This text is __*really important*__.  
   This text is <strong><em>really important</em></strong>.

   This text is **_really important_**.  
   This text is <strong><em>really important</em></strong>.

   This is really***very***important text.  
   This is really<strong><em>very</em></strong>important text.

5. **引用**
   > Dorothy followed her through many of the beautiful rooms in her castle.

   > Dorothy followed her through many of the beautiful rooms in her castle.
   >
   > The Witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood.

   > Dorothy followed her through many of the beautiful rooms in her castle.
   >
   >> The Witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood.

   > #### The quarterly results look great!
   >
   > - Revenue was off the chart.
   > - Profits were higher than ever.
   >
   >  *Everything* is going according to **plan**.

6. **列表**
   1. First item
   2. Second item
   3. Third item
   4. Fourth item
   <ol>
   <li>First item</li>
   <li>Second item</li>
   <li>Third item</li>
   <li>Fourth item</li>
   </ol>

   1. First item
   2. Second item
   3. Third item
      1. Indented item
      2. Indented item
   4. Fourth item
   <ol>
   <li>First item</li>
   <li>Second item</li>
   <li>Third item
   <ol>
   <li>Indented item</li>
   <li>Indented item</li>
   </ol>
   </li>
   <li>Fourth item</li>
   </ol>

   - First item
   - Second item
   - Third item
   - Fourth item
   <ul>
   <li>First item</li>
   <li>Second item</li>
   <li>Third item</li>
   <li>Fourth item</li>
   </ul>

   * First item
   * Second item
   * Third item
   * Fourth item
   <ul>
   <li>First item</li>
   <li>Second item</li>
   <li>Third item</li>
   <li>Fourth item</li>
   </ul>

   + First item
   + Second item
   + Third item
   + Fourth item
   <ul>
   <li>First item</li>
   <li>Second item</li>
   <li>Third item</li>
   <li>Fourth item</li>
   </ul>

   - First item
   - Second item
   - Third item
     - Indented item
     - Indented item
   - Fourth item
   <ul>
   <li>First item</li>
   <li>Second item</li>
   <li>Third item
   <ul>
   <li>Indented item</li>
   <li>Indented item</li>
   </ul>
   </li>
   <li>Fourth item</li>
   </ul>

7. **代码**  
   At the command prompt, type `nano`.  
   At the command prompt, type <code>nano</code>.

   如果你要表示为代码的单词或短语中包含一个或多个反引号，则可以通过将单词或短语包裹在双反引号(``)中。

   ``Use `code` in your Markdown file.``  
   <code>Use `code` in your Markdown file.</code>

   要创建代码块，请将代码块的每一行缩进至少四个空格或一个制表符。

       <html>
          <head>
          </head>
       </html>

8. **分割线**
   ***

   ---

   ___

9. **链接**  
   链接title是当鼠标悬停在链接上时会出现的文字，这个title是可选的，它放在圆括号中链接地址后面，跟链接地址之间以空格分隔。  
   这是一个链接 [Markdown语法](https://markdown.com.cn)。  
   这是一个链接 [Markdown语法](https://markdown.com.cn "最好的markdown教程")。  
   这是一个链接 <a href="https://markdown.com.cn" title="最好的markdown教程">Markdown语法</a>。

   使用尖括号可以很方便地把URL或者email地址变成可点击的链接。
   <https://markdown.com.cn>  
   <fake@example.com>

10. **图片**
    - ![这是图片](/assets/img/philly-magic-garden.jpg "可选的图片标题")
    - 使用图床保存图片，推荐：[路过图床](https://imgse.com/)  
    - 使用 Markdown 语法插入图片（图片不支持跳转）：
      ![pFZHwAe.jpg](https://s11.ax1x.com/2024/01/23/pFZHwAe.jpg)
    - 使用 Markdown 语法插入图片（图片不支持跳转）：
      ![pFZHwAe.jpg](https://s11.ax1x.com/2024/01/23/pFZHwAe.jpg "可选的图片标题")
    - 使用 Markdown 语法插入图片（图片支持跳转）：
      [![pFZHwAe.jpg](https://s11.ax1x.com/2024/01/23/pFZHwAe.jpg)](https://imgse.com/i/pFZHwAe)
    - 使用 HTML 控制图片大小和位置（图片支持跳转）：
      <div align="center">
        <a href="https://imgse.com/i/pFZHwAe">
          <img src="https://s11.ax1x.com/2024/01/23/pFZHwAe.jpg" alt="pFZHwAe.jpg" title="可选的图片标题" width="60%" />
        </a>
      </div>

11. **转义**  
    要显示原本用于格式化 Markdown 文档的字符，请在字符前面添加反斜杠字符 \ 。  
    \* Without the backslash, this would be a bullet in an unordered list.

12. **内嵌 HTML 标签**  
    - 行级內联标签  
      This **word** is bold. This <em>word</em> is italic.

    - 区块标签  
      This is a regular paragraph.

      <table>
        <tr>
          <td>Foo</td>
        </tr>
      </table>

      This is another regular paragraph.

6. **列表**
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