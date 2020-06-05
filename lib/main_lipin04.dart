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
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(//水平佈局
          children: <Widget>[
            Expanded(
              child:Container(
                height: 180,
                color: Colors.red,
                child: Column(//目的:垂直置中
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "你好Flutter",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10,),
        Row(//水平佈局
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network(
                  OpenData[0]["PicURL"],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10,),//左右兩張圖中間加入寬度
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: ListView(// 實現右邊兩張圖在上下顯示
                  children: <Widget>[
                    Container(
                      height: 85,
                      child: Image.network(
                        OpenData[1]["PicURL"],
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10,),//右側兩張圖中間加入寬度
                    Container(
                      height: 85,
                      child: Image.network(
                        OpenData[2]["PicURL"],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}



