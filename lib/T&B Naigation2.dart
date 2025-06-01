import 'package:flutter/material.dart';
// import 'package:t_b_navigation/T&B%20Navigation.dart';

class Navigation extends StatefulWidget {
      const Navigation({super.key});
    
      @override
      State<Navigation> createState() => _NavigationState();
    }

    
    class _NavigationState extends State<Navigation> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOption = <Widget>[
    Text(
      "Index 0 : Home",
      style: optionStyle,
    ),
    Text(
      "Index 1 : Menu",
      style: optionStyle,
    ),Text(
      "Index : 2  Setting",
      style: optionStyle,
    ),
  ];


      @override
      Widget build(BuildContext context) {


        return Scaffold(
          body: Column(
            children: [
              const Padding(padding: EdgeInsets.all(5.0),
              child: Text("Bottom Navigation Bars",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.green,
              ),
              ),

              ),

              const SizedBox(
                height: 100,
              ),
              Center(
                child: _widgetOption.elementAt(_selectedIndex),
              ),



            ],
          ),

          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: "Menu",
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
                backgroundColor: Colors.purple,
              ),
            ],
            currentIndex : _selectedIndex,
            selectedItemColor : Colors.amberAccent[289],
            // onTap: _onItemTapped,
          ),







          // appBar: AppBar(
          //   title: Text("Navigations Page",
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontWeight: FontWeight.bold,
          //     fontSize: 30,
          //   ),),
          //   centerTitle: true,
          //   backgroundColor: Colors.blue,
          //
          //
          //
          //
          //   //////// Actions //////////
          //   actions: <Widget>[
          //     IconButton(
          //       onPressed: (){
          //         print("Press and Click the arrow button");
          //       },
          //       icon: Icon(Icons.notifications),
          //       color: Colors.white,
          //     ),IconButton(
          //       onPressed: (){
          //         print("Click and press the icon button");
          //       },
          //       icon: Icon(Icons.print),
          //     )
          //   ],
          //
          //
          //
          //
          //
          //   ////// Leading //////
          //   leading: (
          //   IconButton(
          //     onPressed: (){
          //       print("press and Click the Icon Button");
          //           Navigator.push(
          //               context,
          //           MaterialPageRoute(
          //               builder: (context)=>Navigations()
          //           ),
          //           );
          //     },
          //     icon: Icon(Icons.arrow_back),
          //     color: Colors.white,
          //   )
          //   ),
          //
          //
          //
          //
          //
          //   ////////// Body ///////////
          // ),body: Center(

        // ),
        );
      }
    }



























    