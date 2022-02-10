import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Image.asset(
          'assets/img/logo.png',
          fit: BoxFit.contain,
          height: 32,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        //shrinkwrap determines the scroll bar ,meaning the list will wrap the content and not everything
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment(0.0, -0.40),
                height: 70.0,
                color: Colors.white,
                child: Text(
                  'Get Coaching',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 70.0, 20.0, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),

                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 2.0,
                  //     color: Colors.grey
                  //   )
                  // ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10.0, 25.0, 0.0, 5.0),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10.0, 50.0, 0.0, 20.0),
                          child: Text(
                            '206',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0),
                          ),
                        )
                      ],
                    ),
                    Container(
                      //margin is used to control the space around the widget while padding is used to control the space inside the widget
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent[100]!.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text(
                          'Buy More',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'MY COACHES',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: [
              buildCard('Chiku', 'Away', 1),
              buildCard('Charles', 'Available', 2),
              buildCard('Ben', 'Available', 3),
              buildCard('Ken', 'Away', 4),
            ],
          )
        ],
      ),
    );
  }

  //function for bulding the card
  Widget buildCard(String name, String status, int cardIndex) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 7.0,
      child: Column(
        children: [
          SizedBox(height: 12.0),
          Stack(
            children: [
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green.withOpacity(0.5),
                  image: DecorationImage(
                    image: AssetImage('assets/img/my_id_photo.jpg'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 35.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: status == 'Away' ? Colors.amber : Colors.green,
                    border: Border.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 3,
                    )),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Text(
            name,
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            status,
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: Container(

              //the line below makes a widget fill the width of a parent container
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(

                color: status == 'Away' ? Colors.grey : Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: Center(
                child: Text(
                  'Request',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Quicksand',
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      margin: cardIndex.isEven
          ? EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 10.0)
          : EdgeInsets.fromLTRB(20.0, 0.0, 5.0, 10.0),
    );
  }
}
