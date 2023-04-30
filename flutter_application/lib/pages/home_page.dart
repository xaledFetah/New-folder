import 'package:flutter/material.dart';
import 'package:flutter_application/pages/util/my_button.dart';
import 'package:flutter_application/pages/util/my_card.dart';
import 'package:flutter_application/pages/util/my_list_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  // page controller
  final _gcontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        // float button
        floatingActionButton: FloatingActionButton(
          elevation: 20,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          clipBehavior: Clip.antiAlias,
          backgroundColor: Colors.pink,
          onPressed: () {},
          child: Icon(
            Icons.price_change,
            size: 34,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        // bottom Navigation Bar
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.all(0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Icon(
                        Icons.home,
                        size: 32,
                        color: Colors.pink[200],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Icon(
                        Icons.settings,
                        size: 32,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              // app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // text
                    Row(
                      children: [
                        Text(
                          "My ",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Cards",
                          style: TextStyle(fontSize: 26),
                        ),
                      ],
                    ),

                    // plus button

                    Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[50], shape: BoxShape.circle),
                        child:
                            IconButton(onPressed: () {}, icon: Icon(Icons.add)))
                  ],
                ),
              ),
              // 1 SizedBox
              SizedBox(
                height: 25,
              ),
              // cards
              Container(
                  height: 200,
                  child: PageView(
                      controller: _gcontroller,
                      scrollDirection: Axis.horizontal,
                      children: [
                        MyCard(
                          balance: 525.275,
                          cardNumber: 444006,
                          expiryMonth: 12,
                          expiryYear: 24,
                          colorV: Colors.deepPurple[300],
                        ),
                        MyCard(
                          balance: 525.999,
                          cardNumber: 444006,
                          expiryMonth: 12,
                          expiryYear: 24,
                          colorV: Colors.blue[300],
                        ),
                        // crad number (3)
                        MyCard(
                          balance: 525.351,
                          cardNumber: 444006,
                          expiryMonth: 12,
                          expiryYear: 24,
                          colorV: Colors.green[300],
                        ),
                      ])),
              // sizedbox for controller
              SizedBox(
                height: 20,
              ),
              // controller
              Center(
                child: SmoothPageIndicator(
                  controller: _gcontroller, count: 3,
                  // controller type
                  effect: CustomizableEffect(
                      dotDecoration: DotDecoration(
                          borderRadius: BorderRadius.circular(12),
                          width: 30,
                          height: 12,
                          color: Colors.grey,
                          verticalOffset: 10,
                          dotBorder: DotBorder(
                              type: DotBorderType.solid,
                              color: Colors.white,
                              width: 1)),
                      activeDotDecoration: DotDecoration(
                          borderRadius: BorderRadius.circular(12),
                          width: 30,
                          height: 12,
                          color: Colors.grey.shade800,
                          rotationAngle: 180,
                          dotBorder: DotBorder(
                              type: DotBorderType.solid,
                              color: Colors.white,
                              width: 1))),
                ),
              ),

              // sizedbox for buttons
              SizedBox(
                height: 20,
              ),
              // 3 buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // send button
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        child: MyButton(
                            iconImagePath: 'lib/icons/send-money.png',
                            buttonTitle: 'Send'),
                      ),
                    ),
                    // pay button
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        child: MyButton(
                            iconImagePath: 'lib/icons/credit-cards.png',
                            buttonTitle: 'Pay'),
                      ),
                    ),
                    // bills button
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        child: MyButton(
                            iconImagePath: 'lib/icons/bill.png',
                            buttonTitle: 'Bills'),
                      ),
                    ),
                  ],
                ),
              ),
              // sizedBox for list
              SizedBox(
                height: 15,
              ),
              // column -> send + pay
              // list 1
              MaterialButton(
                onPressed: () {},
                child: MylistTile(
                    iconImagePath: 'lib/icons/analysis.png',
                    tileName: 'Statistics',
                    tileSubName: 'Payment and Income'),
              ),
              // list 2
              MaterialButton(
                onPressed: () {},
                child: MylistTile(
                    iconImagePath: 'lib/icons/cash-flow.png',
                    tileName: 'Transactions',
                    tileSubName: 'Transaction History'),
              ),
            ],
          ),
        ));
  }
}
