import 'package:flutter/material.dart';
import 'name_bean.dart';
class NameItemWidget extends StatefulWidget {

  final NameBean bean;
  NameItemWidget(this.bean);

  @override
  _NameItemWidgetState createState() => _NameItemWidgetState();
}

class _NameItemWidgetState extends State<NameItemWidget> {

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: _buildItem(widget.bean),
    );
  }

  Widget _buildItem(NameBean bean){
    if(bean.children.isEmpty){
      return ListTile(
        title: Text(bean.name),
        onTap: (){
          _showSeletedName(bean.name);
        },
      );
    }
    return ExpansionTile(
      key: PageStorageKey<NameBean>(bean),
      title: Text(bean.name),
      children: bean.children.map<Widget>(_buildItem).toList(),
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        child: Text(bean.name.substring(0,1),style: TextStyle(color: Colors.white),),
      ),
    );
  }


  _showSeletedName(String name){

    Scaffold.of(context).showSnackBar(SnackBar(content: Text("选择的是："+name)));
  }
}
