import 'package:flutter/material.dart';

import 'RoomModel.dart';
import 'RoomService.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({Key? key}) : super(key: key);

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: RoomServiceClass().fetchFunc(),
          builder:
              (BuildContext context, AsyncSnapshot<List<RoomModel>?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text("Error"));
            } else {
              return Container(
                color: Colors.white,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    itemCount: 14,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          snapshot.data![index].name.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        trailing: Text(snapshot.data![index].id!.toString()),
                        subtitle:
                            Text(snapshot.data![index].nameRu!.toString()),
                      );
                    }),
              );
            }
          }),
    );
  }
}
