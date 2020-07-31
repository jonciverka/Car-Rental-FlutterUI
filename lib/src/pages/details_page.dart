import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
     final  Map  args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: args["color"],
        elevation: 0,
      ),
      backgroundColor: args["color"],
      body: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              _imgHeader(args["img"]),
              _nombreCoche(args["nombre"],  args["color"]),
              _precio(),
              SizedBox(height: 50,),
              _caracteristicas(),
              Expanded(child: Container(),),
              _checkMoreInformation()
            ],
      ),
    );
  }
  Widget _imgHeader(String urlImg){
    return Container(
      padding: EdgeInsets.all(20),
        child: Image(
          image: AssetImage(urlImg),
        )
    );
  }
  Widget _nombreCoche(String nombre, Color colorFondoCirculo){
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Porsche", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w300),),
              Text(nombre, style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w300),)
            ],
          ),
          Expanded(child: Container(),),
          Container(
            width: 50,
            height: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(50),
              border: Border.all(
                width: .5,
                color: Colors.white
              )
            ),
            child: Image(
              image: AssetImage('assets/porchelogo.png'),
            ),
          )
        ],
      ),
    );
  }
  Widget _precio(){
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Column(
            children: <Widget>[
              Text("12 999", style: TextStyle(color: Colors.white),),
              Text("/mont", style: TextStyle(color: Colors.white30),)
            ],
          ),
        ),
        Expanded(child: Container(),),
        Container(
          width: 200,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Book now", style: TextStyle(fontWeight: FontWeight.w900,)),
              Icon(Icons.arrow_right)
            ],
          ),
        )
      ],
    );
  }
  Widget _caracteristicas(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _catacteristica(Icons.shutter_speed, "speed", 250,"max speed"),
        _catacteristica(Icons.power, "power", 250,"hp"),
        _catacteristica(Icons.slow_motion_video, "acc", 4,"sec"),
      ],
    );
  }
  Widget _catacteristica(IconData icono, String descripcion, int valor, String unidad){
    return Column(
      children: <Widget>[
        Icon(icono, color: Colors.white,size: 50,),
        SizedBox(height: 10,),
        Text(descripcion, style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),),
        SizedBox(height: 10,),
        Text(valor.toString(), style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),),
        Text(unidad, style: TextStyle(color: Colors.white70, fontSize: 10, fontWeight: FontWeight.w200),),
      ],
    );

  }
  Widget _checkMoreInformation(){
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Check more information", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),),
          SizedBox(width: 10,),
          Icon(Icons.arrow_drop_up)
        ],
      )
    );
  }
}
