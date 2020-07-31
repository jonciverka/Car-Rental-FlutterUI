import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          children: <Widget>[
            _header(),
            _title(),
            _filterApply(),
            _cartaCoche('assets/porsche911.png', "911 Carrera 4S", Color(0xff0056ff), context),
            _cartaCoche('assets/porschePanamera.png', "Panamera", Color(0xff9d9d9d), context)
          ],
      ),
        ),
      ),
    );
  }
  Widget _header(){
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: <Widget>[
          _calendario(),
          Expanded(child: Container(),),
          _menuIzquierda()
        ],
      ),
    );
  }
  Widget _calendario(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          width: 2,
          color: Color(0xf0dadeea)
        )        
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 10),
        child: Row(
          children: <Widget>[
            Icon(Icons.calendar_today),
            SizedBox(width: 20,),
            Text("17/04  -  22/04",style: TextStyle(fontWeight: FontWeight.w900),),
            SizedBox(width: 10,),
          ],
        ),
      ),
    );
  }
  Widget _menuIzquierda(){
    return Icon(Icons.menu, size: 35,);
  }
  Widget _title(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20, horizontal: 20),
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("choose",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
              Text("a car",style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30),)
            ],
          ),
          Expanded(child: Container(),),
          Container(
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                width: 2,
                color: Color(0xf0dadeea)
              )        
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Filters", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          )
        ],
      ),
    );
  }
  Widget _filterApply(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:0.0, horizontal: 20),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 2,
                color: Color(0xf0dadeea)
              ),
              color: Colors.grey[300]
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  Text("Porsche", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 5,),
                  Icon(Icons.close,size: 20,),
                  SizedBox(width: 5,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _cartaCoche(String urlImg, String nombre, Color colorFondo, BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(        
        color: colorFondo ,
        borderRadius: BorderRadius.circular(50)
      ),
      height: 340,
      width: double.infinity,
      child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical:40, horizontal: 40),
              child: Image(image: AssetImage(urlImg),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal : 40, vertical: 1),
              child:  
                Row(
                  children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Porsche",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 18),),
                        Text(nombre,style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 18),)
                      ],
                    ),
                    Expanded(child: Container(),),
                    Column(
                      children: <Widget>[
                        Text(" 12 999",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                        Text(" /moth",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 15),),                  
                      ],
                    )
                  ],              
                ),
            ),
            Expanded(child: Container(),),
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                      Navigator.pushNamed(context, 'detail', arguments: {'color':colorFondo,'img':urlImg, "nombre":nombre});
                  },
                  child:
                  Container(
                    width: 150,
                    child: Text("Details", textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)
                  ),
                ),
                Expanded(child: Container(),),
                Container(
                  height: 70,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,   
                    borderRadius: BorderRadius.only(bottomRight:Radius.circular(50), topLeft: Radius.circular(50) )                 
                  ),
                  child:  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Book now", style: TextStyle(fontWeight: FontWeight.bold),),
                        Icon(Icons.arrow_right, )
                      ],
                    ),                  
                )
              ],
            )
          ],
        ),
      );
  }
}