import 'package:flutter/material.dart';
import 'package:flutter_mvp/Presenter/presenter.dart';
import 'package:flutter_mvp/Model/model.dart';
import 'package:flutter_mvp/View/view.dart';

class homepage extends StatefulWidget {
  final String text;
  final App_presenter presenter;

  const homepage({Key key, this.text, this.presenter}) : super(key: key);
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> implements App_view {
  Appmodel _appmodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutter mvp pattern'),centerTitle: true,),
      body: Column(
        children: <Widget>[
          TextFormField(
            controller: _appmodel.controller1,

          ),
          SizedBox(height: 15.0,),
          TextFormField(
            controller: _appmodel.controller2,

          ),
          SizedBox(height: 15.0,),
          GestureDetector(
            onTap: (){
              this.widget.presenter.Buttonclick();
            },
            child: Icon(
              Icons.add
            ),

          ),
          SizedBox(height: 15.0,),
          SizedBox(height: 15.0,),
          Text(
            'Result : ${_appmodel.result}',style: TextStyle(
            fontSize: 30.0,
          ),
          )

        ],

      ),
    );
  }

  @override
  void refreshdata(Appmodel model) {
    setState(() {
      this._appmodel=model;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.widget.presenter.view=this;
  }
}
