import 'package:flutter/material.dart';
import 'package:test_app/Alphabets.dart';
//
// void main() => runApp(MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text('Samyam App'),
//         centerTitle: true,
//         backgroundColor: Colors.green[700],
//       ),
//       body: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           // crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                   Container(
//                     color: Colors.lightGreenAccent,
//                     child: Text("Dabadi"),
//                     padding: EdgeInsets.all(10),
//                   ),
//                   Container(
//                     color: Colors.redAccent,
//                     child: Text("Pietersen"),
//                     padding: EdgeInsets.all(10),
//                   )
//                 ]),
//                 RaisedButton.icon(
//                   onPressed: () {
//                     print('Clicked');
//                   },
//                   icon: Icon(
//                     Icons.mail,
//                     color: Colors.blue,
//                     size: 20,
//                   ),
//                   label: Text('Clicked'),
//                 ),
//                 Container(
//                   color: Colors.cyan,
//                   child: Text("Samyam"),
//                   padding: EdgeInsets.all(10),
//                 ),
//                 Container(
//                   color: Colors.lightGreenAccent,
//                   child: Text("Dabadi"),
//                   padding: EdgeInsets.all(20),
//                 ),
//                 Container(
//                   color: Colors.orangeAccent,
//                   child: Image.asset('assets/Aaha-shop-logo.png',width: 150),
//                   padding: EdgeInsets.all(10),
//                 )
//               ],
//             ),
//             RaisedButton.icon(
//               onPressed: () {
//                 print('Clicked');
//               },
//               icon: Icon(
//                 Icons.mail,
//                 color: Colors.blue,
//                 size: 40,
//               ),
//               label: Text(
//                 'Click me',
//                 style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black87),
//               ),
//             ),
//             // Text('Hello World'),
//             Container(
//                 color: Colors.cyan,
//                 padding: EdgeInsets.all(10),
//                 child: Text('Container'))
//           ]
//
//           // child: Icon(
//           //   Icons.airline_seat_flat_angled,
//           //   color: Colors.red[900],
//           //   size: 60,
//           // ),
//
// // child: Image.asset('assets/Aaha-shop-logo.png'),
//
//           // image: NetworkImage(
//           //     'http://aahashop.com/wp-content/uploads/2020/09/Aaha-shop-logo.png'),
//
//           // image: AssetImage('assets/Aaha-shop-logo.png'),
//           // Text('Hello World',
//           // style: TextStyle(
//           //   fontSize: 20,
//           //   fontWeight: FontWeight.bold,
//           //   color: Colors.black87
//           // ),
//           // ),
//           ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           print("Pressed");
//         },
//           child: Text('Click'), backgroundColor: Colors.green[700]),
//     )
//         // Text('Hello World')
//         ));

// -------------------------------------------------------------------

void Homepage() => runApp(MaterialApp(home: Aahashop()));

class Aahashop extends StatefulWidget {
  @override
  _AahashopState createState() => _AahashopState();
}

class _AahashopState extends State<Aahashop> {
  int level = 0;
  List<Alphabets> alpha = [
    Alphabets(alphabet: 'A', meaning: 'Aeroplane'),
    Alphabets(alphabet: 'B', meaning: 'Ball'),
    Alphabets(alphabet: 'C', meaning: 'cat'),
    Alphabets(alphabet: 'D', meaning: 'Dog')
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/Aaha-shop-logo.png', height: 50),
            FlatButton.icon(
                onPressed: () {
                  print('Clicked');
                },
                icon: Icon(
                  Icons.menu,
                  size: 50,
                  color: Colors.black,
                ),
                label: Text('')),
          ],
        ),
        backgroundColor: Colors.orangeAccent[700],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/f1.jpg'),
                radius: 40,
              ),
            ),
            Divider(height: 20, color: Colors.black,),
            Text('Name', style: TextStyle(fontSize: 20, color: Colors.black)),
            SizedBox(height: 10),
            Text('Samyam Dabadi',
                style: TextStyle(fontSize: 36, color: Colors.pink)),
            SizedBox(height: 20),
            Text('Date of Birth',
                style: TextStyle(fontSize: 20, color: Colors.black)),
            SizedBox(height: 10),
            Text('21st Feb 1998',
                style: TextStyle(fontSize: 36, color: Colors.pink)),
            SizedBox(height: 20),
            Text('Level',
                style: TextStyle(fontSize: 20, color: Colors.black)),
            SizedBox(height: 10),
            Text('$level',
                style: TextStyle(fontSize: 36, color: Colors.pink)),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.red,
                  size: 20,
                ),
                SizedBox(width: 10,),
                Text('samyamdw@gmail.com',
                  style: TextStyle(fontSize: 18, color: Colors.blueGrey),),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: alpha.map((data) => Text('${data.alphabet} : ${data.meaning}')).toList(),

            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          level += 1;
        });
      },
        backgroundColor: Colors.grey[400],
        focusColor: Colors.black,
        foregroundColor: Colors.black,
        hoverColor: Colors.blue,
        hoverElevation: 50,
        child: Icon(Icons.add),),
    );
  }
}