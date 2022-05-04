import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReadText extends StatefulWidget {
  @override
  State<ReadText> createState() => _ReadTextState();
}

class _ReadTextState extends State<ReadText> {
  int? kmer_number;
  bool isKemersShown = false;
  bool isNumberShown = false;
  var textcontrol = TextEditingController();


  List suffixes=[];
  List show=[];
  String l='';

  suffix(){
    suffixes.clear();
    l=textcontrol.text;
    int x=textcontrol.text.length;
    for(int a=1;a<=x;a++){
      String result = l.substring(0, a);
      suffixes.add(result);
    }
    return suffixes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(title: Text('All prefixes'),centerTitle: true,leading: Text(''),elevation: 0,),
      body: SingleChildScrollView(
        child: Container(

          child: Column(
            children: [
              Container(
                width: 300,
                margin: EdgeInsets.only(top: 20),
                child: TextField(
                  controller: textcontrol,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Enter the Dna Sequence',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Divider(thickness: 10,color: Colors.blue,),
              ),
              ElevatedButton(
                  onPressed: () {
                    isNumberShown = true;
                    suffix();
                    setState(() {});
                  },
                  child: Text('Show All prefixes')),
              isNumberShown == false
                  ? Text('')
                  : ListView.builder(shrinkWrap: true,itemCount:suffixes.length ,itemBuilder: (c,i){return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyText(
                      text: suffix()[i].toString(), size: 20, color: Colors.indigo.shade900),
                    ),
                  );}),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Divider(thickness: 10,color: Colors.blue,),
              ),

              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
                      return ReadText();
                    }));
                  },
                  child: Text('Restart')),
            ],
          ),
        ),
      ),
    );
  }

}


class MyText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  MyText({required this.text, required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
      TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}







