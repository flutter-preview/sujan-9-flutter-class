import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget'),
      ),
      body: Column(
      
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Positioned(
                  top: 0,
                  child: CircleAvatar(
                      radius: 60,
                      child: Image.asset(
                        'assets/background.png',
                        fit: BoxFit.cover,
                      )),
                ),
                 SizedBox(width: 8,),
                 CircleAvatar(
                     radius: 60,
                     child: Image.asset(
                       'assets/background.png',
                       fit: BoxFit.cover,
                     )),
                 SizedBox(width: 8,),
                CircleAvatar(
                    radius: 60,
                    child: Image.asset(
                      'assets/background.png',
                      fit: BoxFit.cover,
                    )),
                 SizedBox(width: 8,),
                 CircleAvatar(
                     radius: 60,
                     child: Image.asset(
                       'assets/background.png',
                       fit: BoxFit.cover,
                     )),
                 SizedBox(width: 8,),
                   CircleAvatar(
                    radius: 60,
                    child: Image.asset(
                      'assets/background.png',
                      fit: BoxFit.cover,
                    )),
                 SizedBox(width: 8,),
                 CircleAvatar(
                     radius: 60,
                     child: Image.asset(
                       'assets/background.png',
                       fit: BoxFit.cover,
                     )),
                 SizedBox(width: 8,),
                    
              ],
            ),
          ),
         // SizedBox(height: 8,),
          Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Image.asset('assets/background.png',fit: BoxFit.cover,),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                  child: Image.asset('assets/welcome.png',fit: BoxFit.cover,),
                ),
              ),
              
            ],
          )
           
        ],
      ),
    );
  }
}
