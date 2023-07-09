import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '豆评',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: HomeAppWiget(),
    );
  }
}

class HomeAppWiget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return HomeAppState();
  }

}
class HomeAppState extends State<HomeAppWiget>{
 String homeAppTitle ="";
 int indexoo = 0;
 @override
 void initState() {
    // TODO: implement initState
    super.initState();
    print("indexoo:$indexoo");
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
            appBar: AppBar(title: Text("1$homeAppTitle"),),
            body: Text("aaaaaaaaa"),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.cyan,
            selectedItemColor: Colors.red,
            items:const [
              BottomNavigationBarItem(
                  icon:Icon(Icons.home),
                  label:"主页"
              ),
              BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),
                label: "out"

              )

            ],
          onTap: (value){
            print("value$value");
            indexoo = value;
          },
          currentIndex: indexoo,
        )
    );
  }

}
