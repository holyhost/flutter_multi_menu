import 'package:flutter/material.dart';
import 'name_item_widget.dart';
import 'name_bean.dart';

class MultiNamePage extends StatefulWidget {
  @override
  _MultiNamePageState createState() => _MultiNamePageState();
}

class _MultiNamePageState extends State<MultiNamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example - Multi - Menu"),
      ),
      body: ListView.builder(
          itemBuilder:(BuildContext context,int index) => NameItemWidget(data[index]),
        itemCount: data.length,
      ),

    );
  }

}
