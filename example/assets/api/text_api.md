## API
### TDText
#### 默认构造方法

| 参数 | 类型 | 默认值 | 说明 |
| --- | --- | --- | --- |
| data | null | data | 以下系统text属性，释义请参考系统[Text]中注释 |
| font | Font? | - | 字体尺寸，包含大小size和行高height |
| fontWeight | FontWeight? | FontWeight.w400 | 字体粗细 |
| fontFamily | FontFamily? | - | 字体ttf |
| textColor | Color | Colors.black | 文本颜色 |
| backgroundColor | Color? | - | 背景颜色 |
| isTextThrough | bool? | false | 是否是横线穿过样式(删除线) |
| lineThroughColor | Color? | Colors.white | 删除线颜色，对应TestStyle的decorationColor |
| package | String? | - | 字体包名 |
| style | TextStyle? | - | 自定义的TextStyle，其中指定的属性，将覆盖扩展的外层属性 |
| strutStyle |  | - |  |
| textAlign |  | - |  |
| textDirection |  | - |  |
| locale |  | - |  |
| softWrap |  | - |  |
| overflow |  | - |  |
| textScaleFactor |  | - |  |
| maxLines |  | - |  |
| semanticsLabel |  | - |  |
| textWidthBasis |  | - |  |
| textHeightBehavior |  | - |  |
| forceVerticalCenter |  | false |  |
| key |  | - |  |


#### 工厂构造方法

| 名称  | 说明 |
| --- |  --- |
| TDText.rich  | 富文本构造方法 |

```
```
 ### TDTextSpan
#### 默认构造方法

| 参数 | 类型 | 默认值 | 说明 |
| --- | --- | --- | --- |
| context |  | - |  |
| font |  | - |  |
| fontWeight |  | FontWeight.w400 |  |
| fontFamily |  | - |  |
| textColor |  | Colors.black |  |
| isTextThrough |  | false |  |
| lineThroughColor |  | Colors.white |  |
| package |  | 'tdesign_flutter' |  |
| text |  | - |  |
| children |  | - |  |
| style |  | - |  |
| recognizer |  | - |  |
| mouseCursor |  | - |  |
| onEnter |  | - |  |
| onExit |  | - |  |
| semanticsLabel |  | - |  |

```
```
 ### TDTextConfiguration
#### 默认构造方法

| 参数 | 类型 | 默认值 | 说明 |
| --- | --- | --- | --- |
| paddingConfig | TDTextPaddingConfig? | - | forceVerticalCenter=true时，内置padding配置 |
| key |  | - |  |
| child |  | - |  |
