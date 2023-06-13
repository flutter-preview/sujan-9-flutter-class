import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: const Text('Row & Column Demo'),
//         centerTitle: true,
//       ),
//       body:Column(

//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [

//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text('Hello, World!'),
//              const Text('Hello, World!'),
//               SizedBox(
//                 height: 100,

//                 child: Image.network('https://googleflutter.com/sample_image.jpg')),

//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row & Column Demo'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius:60,
               
              ),
              SizedBox(
                width:10,
              ),
              CircleAvatar(
                radius:60,
               
              ),
              SizedBox(
                width:10,
              ),
              CircleAvatar(
                radius:60,
                backgroundImage: NetworkImage('https://googleflutter.com/sample_image.jpg'),
               
              ),
              
              ],
          ),

      SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width:300,

              color: Colors.red, 
              child: Image.network('https://googleflutter.com/sample_image.jpg',
              fit: BoxFit.fill,
              
              ),
              
              )
            ],
          ),
        ],
      ),
    );
  }
}
