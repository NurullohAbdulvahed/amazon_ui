import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWorkPage extends StatefulWidget {
  static final String id = "";

  const HomeWorkPage({Key? key}) : super(key: key);

  @override
  _HomeWorkPageState createState() => _HomeWorkPageState();
}

class _HomeWorkPageState extends State<HomeWorkPage> {

  List<GridClass> listGrid=[
    GridClass("assets/images/item_7.jpeg"),
    GridClass("assets/images/item_5.jpeg"),
    GridClass("assets/images/item_6.jpeg"),
    GridClass("assets/images/item_4.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Container(
            padding: EdgeInsets.only(bottom: 10),
            height: 50,
            width: MediaQuery.of(context).size.width * 0.95,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.only(topLeft: Radius.circular(10))),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.only(top: 10),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF018197))),
                    hintText: "What are you looking for?",
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(Icons.camera_alt),
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
          ),
        ),
        title: Image(
          height: 80,
          width: 80,
          image: AssetImage("assets/images/amazon_logo.png"),
        ),
        leading: Container(
            child: Row(
              children: [
                Container(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                  ),
                ),
              ],
            )),
        backgroundColor: Color(0xFF018197),
        actions: [
          Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.keyboard_voice),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#location
            Container(
              height: 50,
              color: Colors.blueGrey,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.location_on_rounded),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Deliver to Korea,Republic of",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            //#bus
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(60),bottomRight: Radius.circular(60)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/image_1.jpeg")
                          )
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text('We ship 45 million\nproducts',textAlign: TextAlign.center,),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 10,),
            //#signin
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Sign in for the best experience",style: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: MaterialButton(
                        onPressed: (){},
                        height: 45,
                        child: Text("Sign in"),
                        color: Colors.orange,
                        minWidth: double.infinity,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: GestureDetector(
                        child: Text("Create an account",style: TextStyle(color: Colors.blue),),
                      ),
                    ),
                  ],
                ),
              ),
              height: MediaQuery.of(context).size.height*0.18,
            ),
            SizedBox(height: 10,),
            //#deal
            Container(
              color: Colors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.45,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        child: Text("Deal of The Day"),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        //height:MediaQuery.of(context).size.height*0.3,
                        width: double.infinity,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/item_7.jpeg"),
                        ),
                      ),
                    ),
                    SizedBox(height: 7,),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text('Up to 31% off APC UPS Battery Back'),
                            ),
                            Container(
                              child: Text('\$10.99 - \$79.9'),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height*0.65,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Best sellers in Elecntronics"),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder:(context,index){
                          return itemOfGridview(index);
                        } ,
                        itemCount: listGrid.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:  2,
                            childAspectRatio: 1,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10

                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Top products in Camera"),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: MediaQuery.of(context).size.height*0.35,
                      width: double.infinity,
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/item_3.jpeg"),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder:(context,index){
                          return itemOfGridview(index);
                        } ,
                        itemCount: listGrid.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:  2,
                            childAspectRatio: 1,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10

                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
  Widget itemOfGridview(int index){
    return Container(
      child: Container(

        width: double.infinity,
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage(listGrid[index].images),
        ),
      ),
    );
  }
}
class GridClass{
  String images;

  GridClass(this.images);
}
