# 📱 Flutter Column & Row Widgets

This project demonstrates the usage of **Row** and **Column** widgets in Flutter, which are essential for building flexible UI layouts.

---

## 📌 What are Row and Column Widgets?

### ✅ Row Widget
A **Row** is used to arrange child widgets **horizontally** in a single line.

- It expands **horizontally** and aligns widgets from **left to right**.
- Use `mainAxisAlignment` to control **horizontal alignment**.
- Use `crossAxisAlignment` to control **vertical positioning**.
- Can be wrapped inside `Expanded` or `Flexible` widgets to handle screen constraints.

### ✅ Column Widget
A **Column** is used to arrange child widgets **vertically**, one below the other.

- It expands **vertically** and aligns widgets from **top to bottom**.
- Use `mainAxisAlignment` to control **vertical alignment**.
- Use `crossAxisAlignment` to control **horizontal positioning**.
- Works well with `Expanded`, `SizedBox`, or `SingleChildScrollView` for scrolling behavior.

---

## 📌 Properties of Row & Column

| Property             | Row Behavior                        | Column Behavior                     |
|----------------------|----------------------------------|----------------------------------|
| `mainAxisAlignment`  | Controls **horizontal alignment** | Controls **vertical alignment** |
| `crossAxisAlignment` | Controls **vertical positioning** | Controls **horizontal positioning** |
| `children`          | Widgets placed **side by side**  | Widgets placed **one below another** |

---

## 📌 Code Example

### 🎯 Row Example
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.center, // Align center horizontally
  crossAxisAlignment: CrossAxisAlignment.end, // Align bottom
  children: [
    Container(width: 100, height: 100, color: Colors.red),
    SizedBox(width: 20), // Adds spacing between widgets
    Container(width: 100, height: 100, color: Colors.blue),
  ],
)
