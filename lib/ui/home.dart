import 'package:flutter/material.dart';

/*creation de MakeItRain class qui herite de StatefullWedget
  => override createState puisque on doit cree l'etat
   quand on cree un etat=> on doit retourner cette etat
    dans notre cas c'est MakeItRainState
     MakeItRainState extends State  puisque on dois retourner un etat
     MakeItRainState extends State<MakeItRain>=>elle contient notre MakeItRain widget
     du cout on connect ici notre stateful widget avec la creation actuel de l'etat de notre widget
     de meme on cree user interface
     */
class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    /*ici on cree l'etat du widget
    type state qui contient des StateFullWedget */
    return MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  //type d'objet quand vas passer pour lui cree un etat
  int a = 0;

  void addMoney() {
    setState(() {
      // elle est tjours appeller lorsque on a besoin de faire des mise ajour  sur UI
      a = a + 100;
    });
  }

  void subMoney() {
    setState(() {
      a = a - 100;
    });
  }

  void Reset() {
    setState(() {
      a = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MakeItRain"),
        backgroundColor: Colors.blueAccent,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            //titre
            new Center(
                child: new Text(
              "Let's go",
              style: new TextStyle(
                color: Colors.grey.shade400,
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
              ),
            )),
            new Expanded(
                child: new Center(
              child: new Text(
                "\$$a",
                style: new TextStyle(
                    color:a> 3500? Colors.green.shade500:Colors.blue.shade800,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w800),
              ),
            )),
            new Container(
              child: new Row(
                children: <Widget>[
                  new Expanded(
                      child: new Center(
                    child: new FlatButton(
                        color: Colors.blueAccent.shade200,
                        textColor: Colors.white,
                        onPressed: addMoney,
                        child: new Text(
                          "ADD_100",
                          style: new TextStyle(
                            fontSize: 20.0,
                          ),
                        )),
                  )),
                  new Expanded(
                      child: new Center(
                    child: new FlatButton(
                        color: Colors.blueAccent.shade200,
                        textColor: Colors.white,
                        onPressed: subMoney,
                        child: new Text(
                          "SUBB_100",
                          style: new TextStyle(
                            fontSize: 20.0,
                          ),
                        )),
                  )),
                  new Expanded(
                      child: new Center(
                    child: new FlatButton(
                        color: Colors.blueAccent.shade200,
                        textColor: Colors.white,
                        onPressed: Reset,
                        child: new Text(
                          "RESET",
                          style: new TextStyle(
                            fontSize: 20.0,
                          ),
                        )),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
