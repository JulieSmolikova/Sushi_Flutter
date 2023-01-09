import 'package:flutter/material.dart';
import 'package:sushi/buttons.dart';

void main(){
  runApp(const MyApp());
}

enum Amount {
  six,
  Twelve,
  TwentyFour,
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLiked = true;
  dynamic selectedButton;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              padding: const EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 10),
              decoration: const BoxDecoration(
                gradient:
                LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.blueGrey],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    stops: [0.5, 1])
                ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.arrow_back_ios_new_outlined, size: 25, color: Colors.grey,),
                      Icon(Icons.favorite_border, size: 25, color: Colors.grey,),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text('Maki Salmon', style: TextStyle(color: Colors.grey, fontSize: 30),),
                      Text('Salmon category', style: TextStyle(color: Colors.orangeAccent, fontSize: 15),),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Buttons(
                          color: selectedButton == Amount.six ? Colors.orangeAccent : Colors.transparent,
                          onPress: ((){
                            setState(() {
                              selectedButton = Amount.six;
                            });
                          }),
                          child: Center(child: const Text('6 Units', style: TextStyle(fontSize: 17, color: Colors.white),))),
                      Buttons(
                          color: selectedButton == Amount.Twelve ? Colors.orangeAccent : Colors.transparent,
                          onPress: ((){
                            setState(() {
                              selectedButton = Amount.Twelve;
                            });
                          }),
                          child: Center(child: const Text('12 Units', style: TextStyle(fontSize: 17, color: Colors.white),))),
                      Buttons(
                          color: selectedButton == Amount.TwentyFour ? Colors.orangeAccent : Colors.transparent,
                          onPress: ((){
                            setState(() {
                              selectedButton = Amount.TwentyFour;
                            });
                          }),
                          child: Center(child: const Text('24 Units', style: TextStyle(fontSize: 17, color: Colors.white),))),

                    ],
                  ),

                  Container(
                    height: 250,
                    width: 250,
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(5),
                    child: Image.asset('assets/images/maki_salmon.png'),
                  ),

                  Container(
                    height: 70,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade700.withOpacity(0.8),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/images/fish.png'),
                            ),
                            Text('Salmon', style: TextStyle(color: Colors.white, fontSize: 15)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text('.', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                            Text('.', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                            Text('.', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/images/caviar.png'),
                            ),
                            Text('Red Caviar', style: TextStyle(color: Colors.white, fontSize: 15)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text('.', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                            Text('.', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                            Text('.', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/images/rice.png'),
                            ),
                            const Text('White Rice', style: TextStyle(color: Colors.white, fontSize: 15)),
                          ],
                        )
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('\$24.99', style: TextStyle(color: Colors.white, fontSize: 30),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Valuations', style: TextStyle(color: Colors.white, fontSize: 18)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text('4.0', style: TextStyle(color: Colors.white, fontSize: 18),),
                              SizedBox(width: 2,),
                              Icon(Icons.star, size: 20, color: Colors.orange),
                              Icon(Icons.star, size: 20, color: Colors.orange),
                              Icon(Icons.star, size: 20, color: Colors.orange),
                              Icon(Icons.star, size: 20, color: Colors.orange),
                              Icon(Icons.star,size: 20, color: Colors.grey),
                              SizedBox(width: 2,),
                              Text('(45)', style: TextStyle(color: Colors.white, fontSize: 18),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),

                  Container(
                    width: 330,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade700.withOpacity(0.8),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 78,
                          width: 120,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.transparent),
                          child: Image.asset('assets/images/map.png',
                            fit: BoxFit.cover,),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('DELIVERY', style:  TextStyle(color: Colors.grey, fontSize: 16,),),
                            Text('Carrousel de la Tour Eiffel', style:  TextStyle(color: Colors.white70, fontSize: 16,),),
                            Text('12.30 to 13.00', style:  TextStyle(color: Colors.orangeAccent, fontSize: 16,),),
                          ],
                        )
                      ],
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                    child: Container(
                      height: 45,
                      width: 250,
                      decoration: BoxDecoration(
                        color: isLiked ? Colors.transparent : Colors.white38.withOpacity(0.4),
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            color: Colors.orange,
                            width: 2.0),
                      ),
                      child: const Center(child: Text('Make order now', style: TextStyle(color: Colors.white, fontSize: 20))),
                    ),),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
