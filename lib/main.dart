
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final statuses = [
      Permission.storage,
    ].request();
    return MaterialApp(
      title: 'Point Fish',
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  final PageController _controller = PageController(
    initialPage: 0,
  );

  Widget build(BuildContext context) {

    final pages = PageView(
      controller: _controller,
      children: [
        HomeWidget(),
        PesquisaWidget(),
        PeixesWidget(),
        PerfilWidget(),
        ClimaWidget(),
        MareWidget(),
      ],
    );
    return pages;
  }
}


class HomeWidget extends StatelessWidget {

  Widget build(BuildContext context){
    final children = new Scaffold(
      body:
      new Image.asset(
        "images/home.png",
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
      ),
    );
    return new GestureDetector(
      onTapDown: (TapDownDetails details) => _onTapDown(details),
      child: children,
    );
  }

  Widget buton(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ClimaWidget()),
                  );
                  print('elevated buton');
                },
                child: Text ('my')
            )
          ],
        ),

      ),
    );
  }



  _onTapDown(TapDownDetails details){

    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;

    print(details.localPosition);

    int dx = (x / 80).floor();
    int dy = (y-180).floor();
    int posicao = dy * 5 + dx;
    print("results: x=$x y=$y $dx $dy $posicao");

  }


}

class PesquisaWidget extends StatelessWidget {

  Widget build(BuildContext context){
    final children = new Scaffold(
      body: new Image.asset(
        "images/pesquisa.png",
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
      ),
    );
    return new GestureDetector(
      onTapDown: (TapDownDetails details) => _onTapDown(details),
      child: children,
    );
  }
  _onTapDown(TapDownDetails details){

    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;

    print(details.localPosition);

    int dx = (x / 80).floor();
    int dy = (y-180).floor();
    int posicao = dy * 5 + dx;
    print("results: x=$x y=$y $dx $dy $posicao");

  }
}


class PeixesWidget extends StatelessWidget {

  Widget build(BuildContext context){
    final children = new Scaffold(
      body: new Image.asset(
        "images/peixes.png",
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
      ),
    );
    return new GestureDetector(
      onTapDown: (TapDownDetails details) => _onTapDown(details),
      child: children,
    );
  }


  _onTapDown(TapDownDetails details){

    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;

    print(details.localPosition);

    int dx = (x / 80).floor();
    int dy = (y-180).floor();
    int posicao = dy * 5 + dx;
    print("results: x=$x y=$y $dx $dy $posicao");

  }
}


class PerfilWidget extends StatelessWidget {

  Widget build(BuildContext context){
    final children = new Scaffold(
      body: new Image.asset(
        "images/perfil.png",
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
      ),
    );
    return new GestureDetector(
      onTapDown: (TapDownDetails details) => _onTapDown(details),
      child: children,
    );
  }
  _onTapDown(TapDownDetails details){

    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;

    print(details.localPosition);

    int dx = (x / 80).floor();
    int dy = (y-180).floor();
    int posicao = dy * 5 + dx;
    print("results: x=$x y=$y $dx $dy $posicao");

  }
}

class MareWidget extends StatelessWidget {

  Widget build(BuildContext context){
    final children = new Scaffold(
      body: new Image.asset(
        "images/mare.png",
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
      ),
    );
    return new GestureDetector(
      onTapDown: (TapDownDetails details) => _onTapDown(details),
      child: children,
    );
  }
  _onTapDown(TapDownDetails details){

    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;

    print(details.localPosition);

    int dx = (x / 80).floor();
    int dy = (y-180).floor();
    int posicao = dy * 5 + dx;
    print("results: x=$x y=$y $dx $dy $posicao");

  }
}


class ClimaWidget extends StatelessWidget {

  Widget build(BuildContext context){
    final children = new Scaffold(
      body: new Image.asset(
        "images/clima.png",
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
      ),
    );
    return new GestureDetector(
      onTapDown: (TapDownDetails details) => _onTapDown(details),
      child: children,
    );
  }
  _onTapDown(TapDownDetails details){

    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;

    print(details.localPosition);

    int dx = (x / 80).floor();
    int dy = (y-180).floor();
    int posicao = dy * 5 + dx;
    print("results: x=$x y=$y $dx $dy $posicao");

  }
}
