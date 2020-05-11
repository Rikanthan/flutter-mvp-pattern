import 'package:flutter_mvp/View/view.dart';
import 'package:flutter_mvp/Model/model.dart';

class App_presenter
{
    set view(App_view value)
    {}
     void Buttonclick()
    {}

}
class BasicAppPresenter implements App_presenter{
  Appmodel _model;
  App_view _view;

  BasicAppPresenter()
  {
    this._model=Appmodel();
  }

  @override
  void set view(App_view value) {
    _view=value;
    this._view.refreshdata(this._model);
  }

  @override

  void  Buttonclick() {
    int v1=int.parse(this._model.controller1.text);
    int v2=int.parse(this._model.controller2.text);

    this._model.result=v1+v2;
    this._view.refreshdata(this._model);


  }




}