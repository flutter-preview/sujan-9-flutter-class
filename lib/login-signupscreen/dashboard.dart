import 'package:classdemo/login-signupscreen/login.dart';
import 'package:classdemo/login-signupscreen/signup.dart';
import 'package:classdemo/test.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int currentIndex = 0;
  List<Widget> pages = [
    // const Text('Home'),
    // const Text('Search'),
    // const Text('Profile'),
    LoginPage(),
    MyTextField(),
    SignUpPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        // selectedItemColor: Colors.amber[800],
        // unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: currentIndex == 0 ? Colors.blue : Colors.grey,
            ),
            label: 'DashBoard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: currentIndex == 1 ? Colors.blue : Colors.grey,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_rounded,
              color: currentIndex == 2 ? Colors.blue : Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Dashboard extends StatefulWidget {
//   const Dashboard({Key? key}) : super(key: key);

//   @override
//   _DashboardState createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   int currentIndex = 0;
//   List<Widget> pages = [
//     const Text('Home'),
//     const Text('Search'),
//     const Text('Profile'),
//     const Text('Settings'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Dashboard'),
//       ),
//       body: Center(
//         child: pages[1],
//         //pages.elementAt(currentIndex),
//       ),
//       bottomNavigationBar: customBar(),
//     );
//   }

//   Widget customBar() {
//     return Container(
//       height: 90,
//       margin: EdgeInsets.fromLTRB(15, 0, 15, 12),
//       padding: EdgeInsets.all(8),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(
//             color: Colors.black,
//             width: 1,
//           ),
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),

//               blurRadius: 6,
//               offset: const Offset(3, 5), // changes position of shadow
//             ),
//           ]),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Column(
//             children: [
//               IconButton(
//                   onPressed: () {
//                     setState(() {
//                       currentIndex = 0;
//                     });
//                   },
//                   icon: currentIndex == 0
//                       ? Icon(
//                           Icons.home,
//                           color: Colors.red,
//                           size: 30,
//                         )
//                       : Icon(
//                           Icons.home,
//                           color: Colors.grey,
//                         )),
//               Text(
//                 'Home',
//                 style: TextStyle(
//                   color: currentIndex == 0 ? Colors.red : Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               IconButton(
//                   onPressed: () {
//                     setState(() {
//                       currentIndex = 1;
//                     });
//                   },
//                   icon: currentIndex == 1
//                       ? Icon(
//                           Icons.home,
//                           color: Colors.red,
//                           size: 30,
//                         )
//                       : Icon(
//                           Icons.home,
//                           color: Colors.grey,
//                         )),
//               Text(
//                 'Home',
//                 style: TextStyle(
//                   color: currentIndex == 0 ? Colors.red : Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               IconButton(
//                   onPressed: () {
//                     setState(() {
//                       currentIndex = 2;
//                     });
//                   },
//                   icon: currentIndex == 2
//                       ? Icon(
//                           Icons.home,
//                           color: Colors.red,
//                           size: 30,
//                         )
//                       : Icon(
//                           Icons.home,
//                           color: Colors.grey,
//                         )),
//               Text(
//                 'Home',
//                 style: TextStyle(
//                   color: currentIndex == 0 ? Colors.red : Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               IconButton(
//                   onPressed: () {
//                     setState(() {
//                       currentIndex = 3;
//                     });
//                   },
//                   icon: currentIndex == 3
//                       ? Icon(
//                           Icons.home,
//                           color: Colors.red,
//                           size: 30,
//                         )
//                       : Icon(
//                           Icons.home,
//                           color: Colors.grey,
//                         )),
//               Text(
//                 'Home',
//                 style: TextStyle(
//                   color: currentIndex == 0 ? Colors.red : Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
