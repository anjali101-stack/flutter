import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:my_app_flutter/Training/CustomScrollView/customscrollview.dart';
import 'package:my_app_flutter/Training/Custom_widgets/state_full_custom.dart';
import 'package:my_app_flutter/Training/Custom_widgets/state_less_custom.dart';
import 'package:my_app_flutter/Training/ListView/listhome.dart';
import 'package:my_app_flutter/Training/ListView/listview_1.dart';
import 'package:my_app_flutter/Training/ListView/listview_2.dart';
import 'package:my_app_flutter/Training/ListView/listview_3.dart';
import 'package:my_app_flutter/Training/customModularwidgets/home_screen.dart';
import 'package:my_app_flutter/Training/gridview/custom_gridView.dart';
import 'package:my_app_flutter/Training/gridview/gridView_builder.dart';
import 'package:my_app_flutter/Training/gridview/grid_biew_extent.dart';
import 'package:my_app_flutter/Training/gridview/gridhome.dart';
import 'package:my_app_flutter/Training/gridview/gridview_example.dart';
import 'package:my_app_flutter/Training/media_query_examples/media_query_home.dart';
import 'package:my_app_flutter/Training/responsive/aspect_ratio_example.dart';
import 'package:my_app_flutter/Training/responsive/fitted_box_example.dart';
import 'package:my_app_flutter/Training/responsive/flex_example.dart';
import 'package:my_app_flutter/Training/responsive/layout_builder_example.dart';
import 'package:my_app_flutter/Training/responsive/media_query_example.dart';
import 'package:my_app_flutter/Training/responsive/responcive_home.dart';
import 'package:my_app_flutter/Widgets/AnimatedContainer/my_animated_container.dart';
import 'package:my_app_flutter/Widgets/Appbar/my_app_bar.dart';
import 'package:my_app_flutter/Widgets/BottomNavigation/my_bottom_nav.dart';
import 'package:my_app_flutter/Widgets/Col&row/columns_row.dart';
import 'package:my_app_flutter/Widgets/Drawer/my_drawer.dart';
import 'package:my_app_flutter/Widgets/GestureDetector/gesture_detector.dart';
import 'package:my_app_flutter/Widgets/GridView&buider/grid.dart';
import 'package:my_app_flutter/Widgets/GridView&buider/grid_view.dart';
import 'package:my_app_flutter/Widgets/Images/image_assests.dart';
import 'package:my_app_flutter/Widgets/ListView/listview.dart';
import 'package:my_app_flutter/Widgets/SilverAppBar/my_silver.dart';
import 'package:my_app_flutter/Widgets/alertBox/alert_box.dart';
import 'package:my_app_flutter/Widgets/container_widg.dart';
import 'package:my_app_flutter/Widgets/expanded_widg.dart';
import 'package:my_app_flutter/pages/counter_page..dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: Colors.pink,
      ),
      home: HomeScreen(),
      // home:  ,
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> widgetExamples = [
 
    // {"title": "ListView Example", "widget": Listview()},
    // // {"title": "ListView Example 1", "widget": Listview1()},
    // {"title": "ListView saperator", "widget": Listview2()},
    {"title": "ListView", "widget": Listhome()},
    {"title": "GridView Example", "widget": Gridhome()},

    {"title": "CustomScrollView Example 1", "widget": Customscrollview()},
    {"title": "Custom stateless Widgets", "widget": StateLessCustom()},

    {"title": "Custom stateFull Widgets", "widget": StateFullCustom()},
    {"title": "Responsive media", "widget": ResponciveHome()},
        {"title": "MediaQueryHome", "widget": MediaQueryHome()},
                {"title": "Custom module", "widget": HomeScreens()},

   {"title": "AlertBox", "widget": const MyAlertBox()},
    {"title": "Container Widget", "widget": const ContainerWidg()},
    {"title": "Expanded Widget", "widget": const ExpandedWidg()},
    {"title": "Columns & Rows", "widget": ColumnsRow()},
    {"title": "Gesture Detector", "widget": GestureExample()},
    {"title": "Bottom Navigation", "widget": MyBottomNav()},
    {"title": "App Bar Example", "widget": MyAppBar()},
    {"title": "Drawer Example", "widget": MyDrawer()},
    {"title": "Silver App Bar", "widget": MySilver()},
    {"title": "Animated Container", "widget": MyAnimatedContainer()},
    {"title": "Grid View Builder", "widget": GridViewExample()},
    {"title": "Counter Page", "widget": const CounterPage()},
    {"title": "Image Assets", "widget": ImageAssests()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Widgets Example")),
      body: ListView.builder(
        itemCount: widgetExamples.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(widgetExamples[index]["title"]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => widgetExamples[index]["widget"],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
