import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ekel Task',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Ekel AssessementTask'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var mulval = -5;
  var devval = 21;
  var subval = 4;
  var mul;
  var dev;
  var sub;

  void _incrementCounter() {
    setState(() {
      _counter++;
       mul=mulval*_counter;
       dev = devval/_counter;
       sub= subval-_counter;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
       mul=mulval*_counter;
       dev = devval/_counter;
       sub= subval-_counter;
    });
  }
   
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          multiplication(),
          SizedBox(height: 10,),
          subtraction(),
          SizedBox(height: 10,),
          division(),
          SizedBox(height: 10,),
          incDecWidget()
           ],
      ),
      
      );
  }
  Widget multiplication(){
    return Container(
            width: double.infinity,
            height: 100,
            decoration:  BoxDecoration(
                  color: Colors.teal[100],
                  border: Border.all(
                    color: Colors.black,
                    width: 5,
                  )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    
                    Text("Multiplication"),
                    Text("$mulval" "*" "$_counter"),
                    Text(mul!=null?mul.toString():"0"),
                  ],),
            );
        
      }
  Widget subtraction(){
    return Container(
            width: double.infinity,
            height: 100,
            decoration:  BoxDecoration(
                  color: Colors.teal[100],
                  border: Border.all(
                    color: Colors.black,
                    width: 5,
                  )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Text("Subtraction"),
                    Text("$subval" "-" "$_counter"),
                    Text(sub!=null?sub.toString():"0"),
                    
                  ],),
            );
            
        
      }
  Widget division(){
    return Container(
            width: double.infinity,
            height: 100,
            decoration:  BoxDecoration(
                  color: Colors.teal[100],
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                    Text("Devision"),
                    Text("$devval" "/" "$_counter"),
                    Text(dev!=null?dev.toString():"0"),
                  ],),
            );
            
        
      }
  Widget incDecWidget(){
    return  Container(
            width: double.infinity,
            height: 100,
            decoration:  BoxDecoration(
                color: Colors.teal[100],
                border: Border.all(
                  color: Colors.black,
                  width: 5,
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
      child: Text(
        "Increment".toUpperCase(),
        style: TextStyle(fontSize: 14)
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.red)
          )
        )
      ),
      onPressed: () => _incrementCounter()
    ),
                  // TextButton(onPressed: _incrementCounter, child: Text("Increment")),

                  Text(_counter.toString()),
                  //TextButton(onPressed: _decrementCounter, child: Text("decrement")),
                TextButton(
      child: Text(
        "Decrement".toUpperCase(),
        style: TextStyle(fontSize: 14)
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.red)
          )
        )
      ),
      onPressed: () => _decrementCounter()
    ),
                ],),
            );
        

  }
}
