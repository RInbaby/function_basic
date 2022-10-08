import 'package:blocbase/app/repo/home_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  @override
  HomeListState createState() => HomeListState();
}

class HomeListState extends State<HomeList> {
final HomeRepo _homeRepo= HomeRepo();
  @override
  void initState(){

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _homeRepo.getListHome(),
        builder: (context, AsyncSnapshot<List<String>?> snapshot) {
          if (snapshot.connectionState != ConnectionState.done && snapshot.hasData)
            return CircularProgressIndicator();

          return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data?.length ?? 0,
                  itemBuilder: (context, index) {
                return Container(
                  child: Text(snapshot.data![index],style: TextStyle(color: Colors.black,fontSize: 20),),
                );
              });
        }
      ),
    );
  }
}
