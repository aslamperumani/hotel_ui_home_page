import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:search_appbar_tool/search_appbar_tool.dart';

void main() {
  runApp(
    MaterialApp(
      home: HotelUi(),
    ),
  );
  //www.instagram.com/aslamperumani
}

class HotelUi extends StatelessWidget {

  String s = "\$";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text("Type your Location",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                ),
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          /* Clear the search field */
                        },
                      ),
                      hintText: '   Bouddha, Kathmandu',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              ],
            ),
          ),
        ),

        centerTitle: true,
        backgroundColor: Color.fromRGBO(0, 201, 195, 1.0),

        actions: [
          Padding(padding: EdgeInsets.only(right: 11),
        child: Icon(Icons.favorite_border_outlined),),
        ],
      ),
      drawer: Drawer(),



      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 3 / 1,
                    child: GridTile(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            constraints:
                                BoxConstraints(minWidth: 120, maxWidth: 300),
                            width: MediaQuery.of(context).size.aspectRatio,
                            child: Card(
                              elevation: 10,
                              color: Colors.pink,
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.hotel, color: Colors.white),
                                      Text(
                                        "Hotel",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          Container(
                            constraints:
                                BoxConstraints(minWidth: 120, maxWidth: 300),
                            child: Card(
                              elevation: 10,
                              color: Colors.blueAccent,
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.restaurant,
                                          color: Colors.white),
                                      Text(
                                        "Resturent",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            constraints:
                                BoxConstraints(minWidth: 100, maxWidth: 120),
                            child: Card(
                              elevation: 10,
                              color: Colors.orange,
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.local_cafe,
                                          color: Colors.white),
                                      Text("Cafe",
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Card(
                          elevation: 5,
                          surfaceTintColor: Color.fromRGBO(174, 39, 95, 1),
                          child: Column(
                            children: [
                              Stack(
                              alignment: Alignment.bottomRight,
                              children: <Widget>[
                                Image(
                                    image: NetworkImage(
                                        "https://krakow.wiki/wp-content/uploads/2016/11/hotel-1749602_1280.jpg")),
                                Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child:  Text('\$40', style: TextStyle(color: Colors.white)),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.redAccent,
                                      ),

                                    )
                                ),

                              ],
                              ),


                              const ListTile(
                                title: Text("Awsome Room near Bouddha",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                subtitle: Text("Bouddha, Kathmandu"),
                              ),
                              Row(
                                children: const [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 11, bottom: 4),
                                    child: RatingBar.readOnly(
                                      filledIcon: Icons.star,
                                      emptyIcon: Icons.star_border,
                                      initialRating: 4,
                                      maxRating: 5,
                                    ),
                                  ),
                                  Text(
                                    "  (220 reviews)",
                                    style: TextStyle(color: Colors.black45),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
