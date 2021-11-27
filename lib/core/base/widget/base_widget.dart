import 'package:flutter/material.dart';

class BaseView<T> extends StatefulWidget {
  final Widget Function(BuildContext context, T value) onPageBuilder;
  final Function(T model) onModelReady;
  final T viewmodel;
  final VoidCallback onDispose;
  BaseView(
      {Key key,
    @required  this.viewmodel,
     @required this.onPageBuilder,
      this.onModelReady,
      this.onDispose})
      : super(key: key);

  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  void initState() {
    super.initState();
    if (widget.onModelReady != null) {
      widget.onModelReady(widget.viewmodel);
    }
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    if (widget.onDispose != null) {
      widget.onDispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
/* Bu sayfada yaptığımız işlemin çok güzel bir örneği mevcut bu örnekte kullanıcı uygulamanın herhangi bir sayfasında
internetin kesildiğini varsayarsak her sayfada kullanıcıya internetiniz kesildi bildirimi vermektense kullandığımız bütün sayfaları
baseVidget'tan türetirsek ve bu vidgetta internet gidildiğinde hangi işlemin yapılacağını bildirirsek bu sorunu ortadan kaldırmış oluruz */