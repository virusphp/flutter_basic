# 📚 Perjalanan Belajar Flutter - flutter_basic_new

Dokumentasi lengkap tentang journey belajar Flutter dari level fundamental hingga implementasi fitur-fitur penting dalam aplikasi mobile.

---

## 🎯 Tujuan Project

Project ini dibuat sebagai media pembelajaran konsep-konsep fundamental Flutter, mulai dari widget dasar hingga fitur-fitur yang lebih kompleks seperti navigasi, form handling, dan dialog management.

---

## 📖 Materi Pembelajaran

### **1. Widget Fundamental** 📱
Lokasi: `lib/widget_basic/`

Pembelajaran tentang widget-widget dasar yang menjadi fondasi setiap aplikasi Flutter:

#### **a) ScaffoldWidget** 
- **File:** `scaffold_widget.dart`
- **Konsep yang Dipelajari:**
  - `Scaffold` sebagai layout utama aplikasi
  - Implementasi `AppBar` dengan judul terpusat
  - `FloatingActionButton` untuk action utama
  - `body` sebagai konten utama
  - Custom action di `AppBar` menggunakan property `actions`

#### **b) ContainerWidget**
- **File:** `container_widget.dart`
- **Konsep yang Dipelajari:**
  - Styling container dengan background, padding, margin
  - Border radius dan shadow pada container
  - Width dan height configuration
  - Alignment dan positioning

#### **c) ShowTextWidget**
- **File:** `show_text_widget.dart`
- **Konsep yang Dipelajari:**
  - Text styling (fontSize, fontWeight, color)
  - TextStyle customization
  - TextAlign properties
  - Text overflow handling

#### **d) ImageWidget**
- **File:** `image_widget.dart`
- **Konsep yang Dipelajari:**
  - Menampilkan gambar dari assets
  - Image sizing dan fit properties
  - BorderRadius pada image
  - Image caching dan optimization

#### **e) IconWidget**
- **File:** `icon_widget.dart`
- **Konsep yang Dipelajari:**
  - Menggunakan Material Icons
  - Icon sizing dan coloring
  - Icon dalam berbagai context (toolbar, button, dll)

#### **f) ChangeTimeWidget**
- **File:** `change_time_widget.dart`
- **Konsep yang Dipelajari:**
  - State management dasar dengan `StatefulWidget`
  - `setState()` untuk update UI
  - DateTime handling
  - Timer untuk real-time update

---

### **2. Layout & Layouting Widgets** 🎨
Lokasi: `lib/layouting_widget/`

Pembelajaran tentang bagaimana mengatur widget-widget agar tersusun dengan baik dalam layout aplikasi:

#### **a) ColumnWidget**
- **File:** `column_widget.dart`
- **Konsep yang Dipelajari:**
  - `Column` untuk layout vertikal
  - `mainAxisAlignment` (center, start, end, spaceBetween, dll)
  - `crossAxisAlignment` untuk alignment horizontal
  - `Expanded` widget untuk membagi space
  - Spacing antar widget dengan `SizedBox`

#### **b) RowWidget**
- **File:** `row_widget.dart`
- **Konsep yang Dipelajari:**
  - `Row` untuk layout horizontal
  - Kombinasi Row dengan Column
  - `mainAxisSize` untuk control ukuran
  - Widget proportional sizing

#### **c) ListViewWidget**
- **File:** `listview_widget.dart`
- **Konsep yang Dipelajari:**
  - `ListView` untuk menampilkan list item
  - Scrollable content
  - Static list dengan children
  - List item styling

#### **d) ListViewBuilderWidget**
- **File:** `listviewbuilder_widget.dart`
- **Konsep yang Dipelajari:**
  - `ListView.builder()` untuk dynamic list
  - Index based widget building
  - Efficient rendering dengan lazy loading
  - Item count property
  - Perfect untuk data dari API atau database

#### **e) GridViewWidget**
- **File:** `gridview_widget.dart`
- **Konsep yang Dipelajari:**
  - `GridView` untuk layout grid/tabel
  - `SliverGridDelegateWithFixedCrossAxisCount`
  - `SliverGridDelegateWithMaxCrossAxisExtent`
  - Responsive grid layout
  - Cross axis count dan spacing

#### **f) StackWidget**
- **File:** `stack_widget.dart`
- **Konsep yang Dipelajari:**
  - `Stack` untuk overlapping widget
  - `Positioned` untuk absolute positioning
  - Layering widget (z-index equivalent)
  - Badge dan floating label implementasi

#### **g) WrapWidget**
- **File:** `wrap_widget.dart`
- **Konsep yang Dipelajari:**
  - `Wrap` untuk flexible layout yang bisa wrap ke baris baru
  - Spacing dan runSpacing
  - Tag/chip-like UI implementation
  - Flow control widget

---

### **3. Form & Input Handling** 📝
Lokasi: `lib/form_widget/`

Pembelajaran tentang cara membuat dan mengelola form dalam aplikasi Flutter:

#### **FormWidget**
- **File:** `form_widget.dart`
- **Konsep yang Dipelajari:**
  - `StatefulWidget` untuk state management
  - `TextEditingController` untuk input management
  - `TextField` dengan `InputDecoration`
  - Validasi form dasar
  - `DropdownButton` untuk selection
  - `Switch` toggle widget
  - `Radio` button untuk exclusive selection
  - `Checkbox` untuk multiple selection
  - `showDatePicker()` untuk date selection
  - `dispose()` method untuk cleanup resource
  - Form submission handling

---

### **4. Navigation** 🗺️
Lokasi: `lib/navigation/`

Pembelajaran tentang navigasi antar halaman dalam aplikasi:

#### **a) PageOne**
- **File:** `page_one.dart`
- **Konsep yang Dipelajari:**
  - `StatefulWidget` implementation
  - `Navigator.push()` untuk pindah ke halaman baru
  - `MaterialPageRoute` untuk route definition
  - Button untuk trigger navigation

#### **b) PageTwo**
- **File:** `page_two.dart`
- **Konsep yang Dipelajari:**
  - Receiving data dari halaman sebelumnya
  - `Navigator.pop()` untuk kembali
  - Passing data antar halaman
  - Stack-based navigation

---

### **5. Dialog & Modal** 💬
Lokasi: `lib/dialog/`

Pembelajaran tentang menampilkan dialog dan modal windows:

#### **DialogWidget**
- **File:** `dialog_widget.dart`
- **Konsep yang Dipelajari:**
  - `showDialog()` function
  - `AlertDialog` untuk pesan penting
  - Dialog button handling
  - `barrierDismissible` untuk control dismiss behavior
  - Custom dialog actions
  - Dialog result handling

---

## 🏗️ Struktur Folder Project

```
lib/
├── main.dart                          # Entry point aplikasi
├── widget_basic/                      # Widget fundamental
│   ├── scaffold_widget.dart
│   ├── container_widget.dart
│   ├── show_text_widget.dart
│   ├── image_widget.dart
│   ├── icon_widget.dart
│   └── change_time_widget.dart
├── layouting_widget/                  # Layout widgets
│   ├── column_widget.dart
│   ├── row_widget.dart
│   ├── listview_widget.dart
│   ├── listviewbuilder_widget.dart
│   ├── gridview_widget.dart
│   ├── stack_widget.dart
│   └── wrap_widget.dart
├── form_widget/                       # Form handling
│   └── form_widget.dart
├── navigation/                        # Navigation & routing
│   ├── page_one.dart
│   └── page_two.dart
└── dialog/                            # Dialog & modals
    └── dialog_widget.dart
```

---

## 🛠️ Technology Stack

- **Framework:** Flutter
- **Language:** Dart
- **SDK Version:** ^3.10.3
- **Theme:** Material Design dengan Deep Purple color scheme
- **State Management:** StatefulWidget (untuk project fundamental)

---

## 🚀 Cara Menjalankan Project

### Prerequisites
- Flutter SDK terinstall
- Dart SDK (included with Flutter)
- Android Studio / VS Code dengan Flutter extension
- Android Emulator atau iOS Simulator (atau device fisik)

### Setup
```bash
# Clone atau download project
cd flutter_basic_new

# Get dependencies
flutter pub get

# Jalankan aplikasi
flutter run
```

### Build APK/IPA
```bash
# Build APK for Android
flutter build apk --release

# Build IPA for iOS
flutter build ios --release
```

---

## 📚 Konsep-Konsep Penting yang Dipelajari

### **Widget Lifecycle**
- Stateless vs Stateful Widget
- Build method dan rebuilding
- Dispose method untuk cleanup

### **State Management**
- setState() untuk local state
- Lifting state up
- Passing data antar widget

### **UI/UX Best Practices**
- Material Design principles
- Responsive layout
- Widget composition
- Code reusability

### **Dart Language Fundamentals**
- Object-oriented programming
- Null safety
- Async programming (teorinya)
- Collections (List, Map, Set)

---

## 📋 Learning Checklist

- ✅ Widget Fundamental (Scaffold, Container, Text, Icon, Image)
- ✅ Layout Widgets (Column, Row, ListView, GridView, Stack, Wrap)
- ✅ State Management Basic (StatefulWidget, setState)
- ✅ Form & Input Handling (TextField, Dropdown, Radio, Checkbox, DatePicker)
- ✅ Navigation (Push, Pop, Routes)
- ✅ Dialog & Modal (AlertDialog, showDialog)
- ⬜ Advanced State Management (Provider, BLoC, Riverpod)
- ⬜ Database Integration (SQLite, Firebase)
- ⬜ API Integration & HTTP Requests
- ⬜ Animation & Advanced UI
- ⬜ Testing (Unit, Widget, Integration Tests)
- ⬜ App Publishing

---

## 🎓 Sumber Belajar Rekomendasi

1. **Official Flutter Documentation**
   - https://flutter.dev/docs

2. **Dart Language**
   - https://dart.dev/guides

3. **Flutter YouTube Channels**
   - Flutter Official
   - Reso Coder
   - The Net Ninja

4. **Books**
   - "Flutter in Action" by Eric Windmill
   - "Beginning Flutter with Dart" by Pragmatic

---

## 💡 Tips & Best Practices

### Code Organization
- Pisahkan widget ke file terpisah sesuai fungsinya
- Gunakan folder structure yang logis
- Reusable widget harus di extract ke file sendiri

### Performance
- Gunakan `const` constructor ketika mungkin
- Gunakan `ListView.builder()` untuk list besar
- Избегайте rebuilding yang tidak perlu

### Naming Convention
- Class: PascalCase (e.g., `MyWidget`)
- Variables: camelCase (e.g., `myVariable`)
- Files: snake_case (e.g., `my_widget.dart`)
- Constants: camelCase dengan prefix `k` (e.g., `kPrimaryColor`)

---

## 🔗 Project Dependencies

Saat ini project menggunakan default Flutter dependencies:
- `flutter` (Material & Cupertino)
- `flutter_test` (untuk testing)

---

## 📝 Catatan Pengembangan

Project ini adalah fundamental learning project yang dirancang untuk:
1. Memahami konsep dasar Flutter
2. Praktik dengan berbagai widget dan layout
3. Belajar state management sederhana
4. Memahami navigation dan routing

Untuk aplikasi production, pertimbangkan:
- Implementasi state management yang lebih robust
- Error handling yang lebih baik
- Input validation yang lebih comprehensive
- API integration
- Database management

---

## 🤝 Kontribusi & Pengembangan

Untuk mengembangkan project ini lebih lanjut:

1. Create feature branches: `git checkout -b feature/new-feature`
2. Commit changes: `git commit -m "Add new feature"`
3. Push ke branch: `git push origin feature/new-feature`
4. Create Pull Request

---

## 📄 License

Project ini bebas digunakan untuk tujuan pembelajaran.

---

## 📞 Kontak & Support

Jika ada pertanyaan atau butuh bantuan dalam mengikuti learning journey ini, jangan ragu untuk mencari referensi di Flutter documentation resmi atau community forum.

---

**Happy Learning! 🎉**

Semoga project ini membantu dalam perjalanan belajar Flutter Anda. Terus belajar, praktik, dan bangun aplikasi yang amazing! 🚀

