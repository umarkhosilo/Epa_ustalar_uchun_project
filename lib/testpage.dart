// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'Repasitory/katalog/epa_provider.dart';

// class TestPage extends StatefulWidget {
//   const TestPage({Key? key}) : super(key: key);

//   @override
//   State<TestPage> createState() => _TestPageState();
// }

// class _TestPageState extends State<TestPage> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
//       Provider.of<EpaProvider>(context, listen: false).getdata();
      
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.grey,
//         body: Consumer<EpaProvider>(
//           builder: (BuildContext context, EpaProvider snapshot, child) {
//             print(snapshot.data.length);
//             if (snapshot.isLoading) {
//               return Center(
//                 child: CircularProgressIndicator(
//                   color: Colors.green,
//                   strokeWidth: 20,
//                 ),
//               );
//             }
//             return Container();

//             // return Container(
//             //   child: ListView.builder(
//             //       itemCount: snapshot.data.length,
//             //       itemBuilder: ((context, index) {
//             //         return Row(
//             //           children: [Text(snapshot.data[index].title),
//             //           ],
//             //         );
//             //       })),
//             // );
                
//           },
      
//         ));
//   }
// }

