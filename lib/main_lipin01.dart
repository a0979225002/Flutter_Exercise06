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
    //可以呼叫多個class,與個別加入各自的建構參數 來達到多個配置
    return Container(
      height: 800,
      width: 800,
      color: Colors.deepPurple,
       child:Padding(
          padding: EdgeInsets.all(20),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,//x軸:平均分配個別寬度,置中顯示
            crossAxisAlignment: CrossAxisAlignment.start,//y軸:水平佈局組件:可調整在父類內要顯示的位置,上下中

            children: <Widget>[
              IconContainer(Icons.search,color: Colors.blue,size: 50,),
              IconContainer(Icons.home,color: Colors.redAccent,size: 50,),
              IconContainer(Icons.select_all,color: Colors.yellow,size: 50,),
            ],
          ),
        ),
    );
  }

}

class IconContainer extends StatelessWidget{
  double size;
  Color color;
  IconData icon;

  IconContainer(this.icon,{this.color = Colors.red,this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipOval(
      child: Container(
        height: 100,
        width: 100,
        color: this.color,
        child: Center(
          child: Icon(
            this.icon,
            size:this.size,
            color:Colors.white,
          ),
        ),
      ),
    );

  }
  
}


