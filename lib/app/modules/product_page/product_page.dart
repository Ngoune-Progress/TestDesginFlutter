import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:testdesign/app/modules/product_page/product_controller.dart';

import '../../../utils/image_path.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
        builder: (controller) => Scaffold(
              backgroundColor: Color.fromARGB(255, 246, 242, 242),
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 1.0,
                leadingWidth: 150,
                // toolbarHeight: 100,
                leading: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Good Morning",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        "Rafatul Islam",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
                ],
              ),
              body: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Categories",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                                size: 30,
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3.0,
                                      spreadRadius: 2.0,
                                      color: Colors.grey.shade300,
                                    )
                                  ]),
                              child: Center(
                                  child: Image.asset(
                                category,
                                width: 80,
                                height: 80,
                              )),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 3.0,
                                        spreadRadius: 2.0,
                                        color: Colors.grey.shade300,
                                      )
                                    ]),
                                child: Center(
                                    child: Image.asset(
                                  ch,
                                  width: 80,
                                  height: 80,
                                )),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 3.0,
                                        spreadRadius: 2.0,
                                        color: Colors.grey.shade300,
                                      )
                                    ]),
                                child: Center(
                                    child: Image.asset(
                                  mi,
                                  width: 80,
                                  height: 80,
                                )),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 10),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 3.0,
                                        spreadRadius: 2.0,
                                        color: Colors.grey.shade300,
                                      )
                                    ]),
                                child: Center(
                                    child: Image.asset(
                                  mi,
                                  width: 80,
                                  height: 80,
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text("Latest Product",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black))),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width,
                        child: 
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: ListView(
                                  physics: NeverScrollableScrollPhysics(),
                                  children: <Widget>[
                                  
                                  GridView.count(
                                    crossAxisCount: 2,
                                    
                                    physics:
                                        NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                                    shrinkWrap:
                                        true, // You won't see infinite size error
                                    children: <Widget>[
                                      Container(
                                        // height: 680,
                                        // width: 200,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Colors.white,
                                        ),
                                        child: Column(
                                          children: [
                                            Stack(
                                              children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.favorite,
                                                      color: Colors.red,
                                                    )),
                                                Container(
                                                  margin: EdgeInsets.only(top: 15),
                                                  height: 150,
                                                  child: Image.asset(onion),
                                                )
                                              ],
                                            ),
                                            Container(
                                                margin: EdgeInsets.only(left: 10),
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Orange",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20),
                                                )),
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                      margin:
                                                          EdgeInsets.only(left: 10),
                                                      alignment: Alignment.topLeft,
                                                      child: Text(
                                                        '6.7',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 17),
                                                      )),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          right: 10),
                                                      child: Text(
                                                        'Add to cart',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 15),
                                                      )),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      // SizedBox(width: 5,),

                                         Container(
                                          margin: EdgeInsets.only(left: 5),
                                        // height: 680,
                                        // width: 200,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Colors.white,
                                        ),
                                        child: Column(
                                          children: [
                                            Stack(
                                              children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.favorite,
                                                      color: Colors.red,
                                                    )),
                                                Container(
                                                  margin: EdgeInsets.only(top: 15),
                                                  height: 150,
                                                  child: Image.asset(onion),
                                                )
                                              ],
                                            ),
                                            Container(
                                                margin: EdgeInsets.only(left: 10),
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Orange",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20),
                                                )),
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                      margin:
                                                          EdgeInsets.only(left: 10),
                                                      alignment: Alignment.topLeft,
                                                      child: Text(
                                                        '6.7',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 17),
                                                      )),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          right: 10),
                                                      child: Text(
                                                        'Add to cart',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 15),
                                                      )),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),

                                      
                                    ],
                                  ),
                                ]),
                              ),
                              
                            )]),
                  
                ),
              ),
            ));
  }
}
