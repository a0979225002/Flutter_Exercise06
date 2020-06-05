import 'package:flutter/material.dart';
import 'res/listData.dart';
void main(){

    runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("常用佈局介紹"),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}
class LayoutDemo extends StatelessWidget{

  List<Widget> _getData(){
    var Data = OpenData.map((value){

      return Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(
                  value["PicURL"],
                  fit: BoxFit.cover,
              ),
            )
          ],
        ),
      );
    });
    return Data.toList();
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child:GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.7,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:
              Image.network(OpenData[0]["PicURL"],fit: BoxFit.cover,),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:
              Image.network(OpenData[1]["PicURL"],fit: BoxFit.cover,),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:
              Image.network(OpenData[2]["PicURL"],fit: BoxFit.cover,),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:
              Image.network(OpenData[3]["PicURL"],fit: BoxFit.cover,),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:
              Image.network(OpenData[4]["PicURL"],fit: BoxFit.cover,),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:
              Image.network(OpenData[5]["PicURL"],fit: BoxFit.cover,),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:
              Image.network(OpenData[6]["PicURL"],fit: BoxFit.cover,),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:
              Image.network(OpenData[7]["PicURL"],fit: BoxFit.cover,),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:
              Image.network(OpenData[8]["PicURL"],fit: BoxFit.cover,),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:
              Image.network(OpenData[9]["PicURL"],fit: BoxFit.cover,),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child:
              Image.network(OpenData[10]["PicURL"],fit: BoxFit.cover,),
            ),
          ],
        )
    );
  }

}
