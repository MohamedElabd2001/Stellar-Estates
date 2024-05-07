import 'package:flutter/material.dart';
import 'package:website/radio.dart';
import 'package:website/slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stellar Estates',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToSection(BuildContext context, double sectionOffset) {
    _scrollController.animateTo(
      sectionOffset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    double sectionOffset(BuildContext context, double factor) {
      final RenderBox renderBox = context.findRenderObject() as RenderBox;
      final screenSize = renderBox.size.height;
      return screenSize * factor;
    }
    double _currentSliderValue = 20;
    int _groupValue = 0;
    double _slideValue = 0;
    String selectedOption;


    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.1,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0,right: 25,top: 27),
                    child: Column(
                      children: [
                        Flexible(child: customText("STELLAR ESTATES",fontWeight: FontWeight.bold)),
                        Flexible(child: customText("Unlocking Excellence in Real Estate",fontSize: 10)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 11,),
                  Flexible( // Wrap the IconButton with Expanded
                    child: IconButton(
                      onPressed: () {},
                      icon: customText('Home',fontWeight: FontWeight.bold),
                      color: Colors.white,
                    ),
                  ),
                  Flexible( // Wrap the IconButton with Expanded
                    child: IconButton(
                      onPressed: () {},
                      icon: customText('About Us',fontWeight: FontWeight.bold),
                      color: Colors.white,
                    ),
                  ),
                  Flexible( // Wrap the IconButton with Expanded
                    child: IconButton(
                      onPressed: () {},
                      icon: customText('Contact Us',fontWeight: FontWeight.bold),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),


            Container(
              color: Colors.grey[200],
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            'assets/images/home.jpg',
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            left: 90,
                            bottom: 100,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customText(
                                    "Your Dream Home Awaits.",
                                    fontSize: 50,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(height: 10),
                                  customText(
                                      "Discover the perfect home that suits your lifestyle. Let us guide you through our extensive portfolio of residential properties.",
                                      color: Colors.white,
                                      fontSize: 27
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20.0),
                      decoration: const BoxDecoration(
                        color: Color(0xff000747),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 50),
                          customText("Our Services", fontWeight: FontWeight.bold, fontSize: 20.0),
                          const SizedBox(height: 15),
                          customText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", fontSize: 16.0),
                          const SizedBox(height: 60),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipOval(child: Image.asset('assets/images/home.jpg', height: 50)),
                              ClipOval(child: Image.asset('assets/images/home.jpg', height: 50)),
                              ClipOval(child: Image.asset('assets/images/home.jpg', height: 50)),
                              ClipOval(child: Image.asset('assets/images/home.jpg', height: 50)),
                              ClipOval(child: Image.asset('assets/images/home.jpg', height: 50)),
                            ],
                          ),
                          const SizedBox(height: 200,),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.7,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Positioned(
                                child: Container(
                                  width: MediaQuery.of(context).size.width *0.55,
                                  // 2 photos

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      customText("About Us",fontWeight: FontWeight.bold,fontSize: 25),
                                      SizedBox(height: 12,),
                                      Container(
                                          width: MediaQuery.of(context).size.width * 0.3,
                                          child: customText("The commitment to excellence, integrity, and client-centricity that sets us apart as a leader in the pursuit of exceptional real estate experiences is achieved by the team of in-house property consultants and the work culture Stellar Estates embodies.")),

                                      SizedBox(height: 40,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons.home_outlined,size: 45,),
                                          Icon(Icons.home_outlined,size: 45,),
                                          Icon(Icons.home_outlined,size: 45,),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )

                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20.0),
                      decoration: const BoxDecoration(
                        color: Color(0xff000747),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100.0,bottom: 80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  customText("Let s find the right selling option for you",color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),
                                  customText("Our experienced team is dedicated tounder standing your needs and delivering personalized solutions.",color: Colors.white),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(Icons.check_box_outlined,size: 50,),
                                  customText("Property Management", color: Colors.white),
                                  customText("We offer comprehensive property management services to ensure your investment is well-maintained and profitable.", color: Colors.white12),
                                  const SizedBox(height: 80,),
                                  customText("Property Management", color: Colors.white),
                                  customText("We offer comprehensive property management services to ensure your investment is well-maintained and profitable.", color: Colors.white12),
                                ],
                              ),
                            ),Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(Icons.check_box_outlined,size: 50,),
                                  customText("Property Management", color: Colors.white),
                                  customText("We offer comprehensive property management services to ensure your investment is well-maintained and profitable.", color: Colors.white12),
                                  const SizedBox(height: 80,),
                                  customText("Property Management", color: Colors.white),
                                  customText("We offer comprehensive property management services to ensure your investment is well-maintained and profitable.", color: Colors.white12),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Container(
                        width: double.infinity,

                        child: Stack(
                          children: [
                            Image.asset("assets/images/home.jpg",fit: BoxFit.cover,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.2, vertical: MediaQuery.of(context).size.height * 0.06),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  color: Colors.white
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 80.0,vertical: 70),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      customText("Get in Touch",fontWeight: FontWeight.bold,fontSize: 30),
                                      SizedBox(height: 4,),
                                      customText("Our property consultant will get in contact with you."),
                                      SizedBox(height: 8,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              customText("First Name"),
                                              SizedBox(height: 4,),
                                              Container(
                                                width: MediaQuery.of(context).size.width * 0.2,
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              customText("Last Name"),
                                              SizedBox(height: 4,),
                                              Container(
                                                width: MediaQuery.of(context).size.width * 0.2,
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 22,),

                                      customText("Phone Number"),
                                      SizedBox(height: 4,),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.2,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 22,),
                                      GenderRadio(),
                                      SizedBox(height: 22,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          customText("Area"),
                                          SizedBox(height: 4,),
                                          Container(
                                            width: MediaQuery.of(context).size.width * 0.2,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                hintText: "180 m",
                                                hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 22,),
                                      MySlider(),
                                      SizedBox(height: 22,),
                                      customText("Tell us what you’re looking for, and we will tailor a plan for you.",fontWeight: FontWeight.bold),
                                      SizedBox(height: 10,),
                                      TextFormField(
                                        maxLines: 10, // Allow multiple lines
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      SizedBox(height: 22,),
                                      Center(
                                        child: Container(
                                          child: Center(
                                            child: ElevatedButton(
                                              onPressed: () {
                                                // Add your submission logic here
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xff000747), // Set background color
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(12.0),
                                                child: customText("Submit", color: Colors.white), // Your customText widget
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                    ),

                    // Your remainin

                    // Add your photos with texts and icons here
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customText(
      String text, {
        Color color = Colors.black,
        double fontSize = 16.0,
        FontWeight fontWeight = FontWeight.normal,
      }) {
    return Text(
        text,
        style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight, )
       );
   }
}