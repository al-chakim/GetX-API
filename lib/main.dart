import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/bindings/myB.dart';
import 'package:getx_api/controllers/myC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
      initialBinding: MyB(),
    );
  }
}

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Mixin'),
//       ),
//       body: Center(
//         child:
//         // Column(
//         //   mainAxisAlignment: MainAxisAlignment.center,
//         //   children: [
//         //     Text(
//         //       'Halo',
//         //       style: TextStyle(
//         //         fontSize: 25,
//         //       ),
//         //     ),
//         //   ],
//         // ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//       ),
//     );
//   }
// }

class Home extends GetView<MyC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mixin'),
      ),
      body: Center(
        child: controller.obx(
          (state) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Id : ${state!["id"]}"),
              Text("Name : ${state["first_name"] + state["last_name"]}"),
              Text("Email : ${state["email"]}"),
              CircleAvatar(
                backgroundImage: NetworkImage('${state['avatar']}'),
                radius: 30,
              )
            ],
          ),
          onEmpty: Text("Data belum ada"),
          onError: (error) => Text(error.toString()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getData();
        },
      ),
    );
  }
}
