import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


void main() {
  runApp(MyApp());
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.all(10),

              child: Text('This is my first layout application sir',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Text('What would you advice me to focus on well i am trying to understand the layout formatting',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red,
      ),
      Text('21'),
    ],
  ),
);





class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'I would like for us to go through this code maybe step up step cause I fear I might be having the wrong Concepts',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Text(
                  'There is need to read more about the container and the syntax structure of the code',
                  style: TextStyle(
                    color: Colors.amber[500],
                  ),

                ),
              ],
            ),
          ),

          Icon(
            Icons.star,
            color: Colors.deepOrange[500],
          ),
          Text('30'),
        ],
      ),
    );


    Color color = Theme
        .of(context)
        .primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Step by Step it will take me some time to know this language'
        'Perfection means that i have to keep trying the tutorials'
        'I should hand it that flutter is really and interesting language'
        'It has come to my attention that all programming languages are similar if not the syntax is the same'
        'Cannot wait for me to reach pro.',
        softWrap: true,
      ),
    );


    return MaterialApp(
      title: 'Layout',
      theme: ThemeData(
        //   primarySwatch: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout in Flutter'),
        ),


        body: Column(
          children: [
            Image.asset(
              'images/lambo.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,

          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

