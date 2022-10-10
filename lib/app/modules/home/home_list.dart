import 'package:blocbase/app/modules/widgets/custom_paint.dart';
import 'package:blocbase/app/repo/home_repo.dart';
import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  @override
  HomeListState createState() => HomeListState();
}

class HomeListState extends State<HomeList> {
  final HomeRepo _homeRepo = HomeRepo();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MainAppBar(),
        body: FutureBuilder(
            future: _homeRepo.getListHome(),
            builder: (context, AsyncSnapshot<List<String>?> snapshot) {
              if (snapshot.connectionState != ConnectionState.done &&
                  snapshot.hasData) return CircularProgressIndicator();

              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    return cardTex(
                      career: snapshot.data![index],
                    );
                  });
            }),
      ),
    );
  }

  cardTex({required String career}) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
      padding: EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: Colors.deepOrange[300],
        borderRadius: BorderRadius.circular(17),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: new Offset(1.0, 1.0),
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            career,
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          Spacer(),
          Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 0.1),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          )
        ],
      ),
    );
  }
}
