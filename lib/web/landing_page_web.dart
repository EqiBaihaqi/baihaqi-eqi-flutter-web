import 'package:baihaqi_akbar/web/component.dart';
import 'package:flutter/material.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => LandingPageWebState();
}

class LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: const Row(
          children: [
            TabsWeb(title: 'Home'),
            Spacer(),
            TabsWeb(title: 'Works'),
            Spacer(),
            TabsWeb(title: 'Blog'),
            Spacer(),
            TabsWeb(title: 'About'),
            Spacer(),
            TabsWeb(title: 'Contact'),
            Spacer(),
          ],
        ),
      ),
      body: ListView(children: [
        // First Section
        SizedBox(
          height: heightDevice - 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      decoration: const BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          )),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      child: const Sans(
                        text: "Hello I'm",
                        size: 15,
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  const SansBold(
                    text: "Al Akbar B.",
                    size: 55,
                  ),
                  const Sans(text: "Flutter developer", size: 30),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(
                        width: 20,
                      ),
                      Sans(text: "baihaqi08.aa@gmail.com", size: 15.0)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Icon(Icons.call),
                      SizedBox(
                        width: 20,
                      ),
                      Sans(text: "+6289681754400", size: 15.0)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Icon(Icons.location_pin),
                      SizedBox(
                        width: 20,
                      ),
                      Sans(text: "Malang", size: 15.0)
                    ],
                  ),
                ],
              ),
              const CircleAvatar(
                radius: 147.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 143.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 140.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/me.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Second Section
        SizedBox(
          height: heightDevice / 1.5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/web.jpg',
                height: heightDevice / 1.7,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SansBold(
                    text: 'About Me',
                    size: 40,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Sans(
                    text:
                        "Hey there! 👋 I'm Baihaqi, I Specialize in flutter development.",
                    size: 15,
                  ),
                  const Sans(
                    text:
                        "I strive to ensure astounding performance with state of",
                    size: 15,
                  ),
                  const Sans(
                    text: "the art security of Android, Ios, and Web",
                    size: 15,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.tealAccent,
                            style: BorderStyle.solid,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: const EdgeInsets.all(7.0),
                        child: const Sans(
                          text: 'Android',
                          size: 15.0,
                        ),
                      ),
                      const SizedBox(
                        width: 7.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.tealAccent,
                            style: BorderStyle.solid,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: const EdgeInsets.all(7.0),
                        child: const Sans(
                          text: 'IOS',
                          size: 15.0,
                        ),
                      ),
                      const SizedBox(
                        width: 7.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0)),
                        padding: const EdgeInsets.all(7.0),
                        child: const Sans(
                          text: 'Web',
                          size: 15.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        // Third Section
        SizedBox(
          height: heightDevice / 1.3,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SansBold(
                text: "What I do?",
                size: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedCardWeb(
                      imagePath: "assets/webL.png", text: "Web development"),
                  AnimatedCardWeb(
                    imagePath: "assets/app.png",
                    text: "App development",
                    reverse: true,
                  ),
                  AnimatedCardWeb(
                      imagePath: "assets/firebase.png",
                      text: "Back-end development")
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: heightDevice,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SansBold(text: "Contact me", size: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      TextFormCustom(
                        heading: "First name",
                        maxLine: 1,
                        hintText: "Please type your first name",
                        width: 350,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormCustom(
                        heading: "Email",
                        maxLine: 1,
                        hintText: "Please type your email address",
                        width: 350,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextFormCustom(
                        heading: "Last name",
                        maxLine: 1,
                        hintText: "Please type your last name",
                        width: 350,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormCustom(
                        heading: "Phone number",
                        maxLine: 1,
                        hintText: "Please type your phone number",
                        width: 350,
                      ),
                    ],
                  ),
                ],
              ),
              TextFormCustom(
                  heading: 'Message',
                  maxLine: 10,
                  hintText: "Please type your message",
                  width: widthDevice / 1.5),
              MaterialButton(
                onPressed: () {},
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60.0,
                minWidth: 200.0,
                color: Colors.teal,
                child: const SansBold(
                  text: 'Submit',
                  size: 20.0,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20.0)
      ]),
    );
  }
}
