import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
      routes: {
        '/': (context) => const HomeRoute(),
        '/second': (context) => const SecondRoute(),
        '/third': (context) => const ThirdRoute(),
        '/fourth': (context) => const FourthRoute(),
      },
    )); //MaterialApp
  }

class HomeRoute extends StatelessWidget {
const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 128, 177, 209),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 70.0,
              backgroundImage: NetworkImage('https://scontent.fbag1-2.fna.fbcdn.net/v/t1.15752-9/280738781_1018901602352531_2052224323089829989_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=ae9488&_nc_ohc=2m2LEALN91IAX9B_C7O&_nc_ht=scontent.fbag1-2.fna&oh=03_AVLlePKsLT6AiUs3P1Zw5kSJ87--GRh3RZlOHEcyf28pVQ&oe=635E06AC'),
            ),
            Text(
              'Kurt Z. De Vera',
              style: TextStyle(
                fontFamily: 'Orpheus',
                fontSize: 35.0,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              'CURRICULUM VITAE',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 17.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
   ElevatedButton(
  style: ElevatedButton.styleFrom(
  backgroundColor: Color.fromARGB(255, 6, 84, 240), // background
  ),
  child: const Text('Personal Information'),
  onPressed: () {
  Navigator.pushNamed(context, '/second');
  },
  ), // ElevatedButton
  ElevatedButton(
  style: ElevatedButton.styleFrom(
  backgroundColor: Color.fromARGB(255, 6, 240, 52), // background
  ),
  child: const Text('Educational Background'),
  onPressed: () {
  Navigator.pushNamed(context, '/third');
  },
  ), // ElevatedButton
  ElevatedButton(
  style: ElevatedButton.styleFrom(
  backgroundColor: Color.fromARGB(255, 243, 33, 33), // background
  ),
  child: const Text('Personal Experience'),
  onPressed: () {
  Navigator.pushNamed(context, '/fourth');
  },
  ),
  ],

  ),

  ),
  ),
  ); // Scaffold
  }
  }

  class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: const Text("About Me"),
  backgroundColor: Color.fromARGB(255, 128, 177, 209),
  ), // AppBar
  body: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  SizedBox(
  height: 20.0,
  width: 150.0,
  child: Divider(
  color: Colors.teal.shade100,
  ),
  ),
  Card(
  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
  child: ListTile(
  leading: Icon(
  Icons.account_box,
  color: Color.fromARGB(255, 128, 177, 209),
  ),
  title: Text(
  'Name: KURT ZARATE DE VERA',
  style: TextStyle(
  color: Color.fromARGB(255, 0, 0, 0),
  fontFamily: 'Source Sans Pro',
  fontSize: 18.0,
  ),
  ),

  ),
  ),
 Card(
  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
  child: ListTile(
  leading: Icon(
  Icons.account_box,
  color: Color.fromARGB(255, 128, 177, 209),
  ),
  title: Text(
  'Phone Number: +639104894343'+
  '\n---------------------------------------\nEmail Address: deverapromaker@gmail.com',
  style: TextStyle(
  color: Color.fromARGB(255, 0, 0, 0),
  fontFamily: 'Source Sans Pro',
  fontSize: 18.0,
  ),
  ),

  ),
  ),
  ],

  ),
  ), // Center
  ); // Scaffold
  }
  }

  class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: const Text("Education"),
  backgroundColor: Color.fromARGB(255, 128, 177, 209),
  ), // AppBar
  body: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  SizedBox(
  height: 20.0,
  width: 150.0,
  child: Divider(
  color: Colors.teal.shade100,
  ),
  ),
  Card(
  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
  child: ListTile(
  leading: Icon(
  Icons.school,
  color: Color.fromARGB(255, 128, 177, 209),
  ),
  title: Text(
  'Tertiary Education ',
  style: TextStyle(
  color: Color.fromARGB(255, 0, 0, 0),
  fontFamily: 'Source Sans Pro',
  fontSize: 20.0,
  ),
  ),
  subtitle: Text('Philippine College of Science and Technology'
  ),

  ),
  ),
  Card(
  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
  child: ListTile(
  title: Text(
  'Philippine College of Science and Technology',
  style: TextStyle(
  color: Color.fromARGB(255, 0, 0, 0),
  fontFamily: 'Source Sans Pro',
  fontSize: 20.0,
  ),
  ),
  subtitle: Text('Bachelor of Science in Information Technology 2019-2023'
  ),

  ),
  ),
  Card(
  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
  child: ListTile(
  leading: Icon(
  Icons.school,
  color: Color.fromARGB(255, 128, 177, 209),
  ),
  title: Text(
  'Secondary Education',
  style: TextStyle(
  fontSize: 20.0,
  color: Color.fromARGB(255, 0, 0, 0),
  fontFamily: 'Source Sans Pro'),
  ),

  ),
  ),
  Card(
  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
  child: ListTile(
  title: Text(
  'Parayao National Highschool',
  style: TextStyle(
  color: Color.fromARGB(255, 0, 0, 0),
  fontFamily: 'Source Sans Pro',
  fontSize: 20.0,
  ),
  ),
  subtitle: Text('Senior High School 2017-2019'
  ),

  ),
  ),
  Card(
  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
  child: ListTile(
  title: Text(
  'Parayao National Highschool',
  style: TextStyle(
  color: Color.fromARGB(255, 0, 0, 0),
  fontFamily: 'Source Sans Pro',
  fontSize: 20.0,
  ),
  ),
  subtitle: Text('Junior High School 2011-2017'
  ),
  ),
  ),
  Card(
  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
  child: ListTile(
  leading: Icon(
  Icons.school,
  color: Color.fromARGB(255, 128, 177, 209),
  ),
  title: Text(
  'Primary Education',
  style: TextStyle(
  fontSize: 20.0,
  color: Color.fromARGB(255, 0, 0, 0),
  fontFamily: 'Source Sans Pro'),
  ),
  ),
  ),
  Card(
  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
  child: ListTile(
  title: Text(
  'Idoldol Elementary School',
  style: TextStyle(
  color: Color.fromARGB(255, 0, 0, 0),
  fontFamily: 'Source Sans Pro',
  fontSize: 20.0,
  ),
  ),
  subtitle: Text('2015-2011'
  ),
  ),
  ),
  ],

  ),
  ), // Center
  ); // Scaffold
  }
  }

  class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: const Text("Background"),
  backgroundColor: Color.fromARGB(255, 128, 177, 209),
  ),
  body: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  SizedBox(
  height: 20.0,
  width: 150.0,
  child: Divider(
  color: Colors.teal.shade100,
  ),
  ),
  Card(
  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
  child: ListTile(
  leading: Icon(
  Icons.laptop,
  color: Color.fromARGB(255, 128, 177, 209),
  ),
  title: Text(
  "Professional Summary",
  style: TextStyle(
  color: Color.fromARGB(255, 0, 0, 0),
  fontFamily: 'Source Sans Pro',
  fontSize: 20.0,
  ),
  ),
  subtitle: Text("I'm a programmer and a freshly graduated out of college"
  ),

  ),
  ),
  Card(
  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
  child: ListTile(
  leading: Icon(
  Icons.laptop,
  color: Color.fromARGB(255, 128, 177, 209),
  ),
  title: Text(
  'Skills and Abilities',
  style: TextStyle(
  color: Color.fromARGB(255, 0, 0, 0),
  fontFamily: 'Source Sans Pro',
  fontSize: 20.0,
  ),
  ),
  subtitle: Text("Trustworthy, Multi-Tasking, Loyalty "
  ),
  ),
  ),
  Card(
  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
  child: ListTile(
  leading: Icon(
  Icons.laptop,
  color: Color.fromARGB(255, 128, 177, 209),
  ),
  title: Text(
  'Web-Development',
  style: TextStyle(
  color: Color.fromARGB(255, 0, 0, 0),
  fontFamily: 'Source Sans Pro',
  fontSize: 20.0,
  ),
  ),
  subtitle: Text("I have a experience to developing website using PHP and knowledge to front-end"
  ),
  ),
  ),
  Card(
  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
  child: ListTile(
  leading: Icon(
  Icons.laptop,
  color: Color.fromARGB(255, 128, 177, 209),
  ),
  title: Text(
  'Certificates',
  style: TextStyle(
  color: Color.fromARGB(255, 0, 0, 0),
  fontFamily: 'Source Sans Pro',
  fontSize: 20.0,
  ),
  ),
  subtitle: Text("NCII holder in Computer System Servicing "
  ),
  ),
  ),
  ],

  ),
  ), /// AppBar

  ); // Scaffold
  }
  }