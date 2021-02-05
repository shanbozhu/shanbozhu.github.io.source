---
title: "Markdown表格语法"
date: 2019-11-15T16:30:33+08:00
draft: false
---

| 项目        | 价格   |  数量  |
| --------   | -----:  | :----:  |
| 计算机     | \$1600 |   5     |
| 手机        |   \$12   |   12   |
| 管线        |    \$1    |  234  |

<table>
    <tr>
        <td>列一</td> 
        <td>列二</td>
        <td>列三</td> 
   </tr>
   <tr>
        <td colspan="2">合并行</td>
        <td>列三</td>    
   </tr>
   <tr>
        <td>列一</td> 
        <td>列二</td>
        <td>列三</td> 
   </tr>
    <tr>
        <td rowspan="2">合并列</td>    
        <td >行二列二</td>
        <td>列三</td>  
    </tr>
    <tr>
        <td >行三列二</td>
        <td>列三</td>  
    </tr>
</table>