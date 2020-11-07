import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'customorderdetails.dart';
class CustomTextBook extends StatefulWidget {
  @override
  _CustomTextBookState createState() => _CustomTextBookState();
}

class _CustomTextBookState extends State<CustomTextBook> {
  Future getData(url) async {
    //String theUrl='https://designproject---eprint.000webhostapp.com/orderdisplay.php';
    var res = await http.get(
        Uri.encodeFull(url), headers: {"Accept": "application/json"});
    if (res.statusCode == 200) {
      var responseBody = json.decode(res.body);
      print(responseBody);
      return responseBody;
    }
    else {
      print(res.statusCode);
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("CUSTOM ORDERS"),

        ),
        body: FutureBuilder(
            future: getData('https://designproject---eprint.000webhostapp.com/customorderdisplay.php'),
            builder: (BuildContext context,AsyncSnapshot snapshot){
              List snap=snapshot.data;
              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError){
                return Center(child: Text('Error fetching data'));
              }
              return ListView.builder(
                  itemCount: snap.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: ListTile(
                        title: Text("${snap[index]['NAME']}"),
                        subtitle: Text("ordered by ${snap[index]['STUDENT']}"),
                        trailing: Icon(Icons.visibility),
                        onTap:(){
                          setState(() {
                            takeOrder("${snap[index]['SUBJECT']}","${snap[index]['NAME']}","${snap[index]['AUTHOR']}","${snap[index]['BEG']}","${snap[index]['END']}","${snap[index]['PAGES']}",
                                "${snap[index]['COPIES']}","${snap[index]['PRICE']}","${snap[index]['AMOUNT']}","${snap[index]['STUDENT']}","${snap[index]['PHN']}","${snap[index]['ADMNO']}");


                          });

                        },


                      ),
                    );
                  });
            }
        )

    );
  }

  void takeOrder(sub,nam, auth,starting,ending,page,copy, pri, amo, std,phone, adno) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => CustomOrderDetails(subject: sub,nameOfBook: nam,author: auth,beg: starting,end: ending,pages: page,copies: copy,price: pri,amount: amo,student: std,
        phn: phone,admno: adno,),
    ),);

  }
}

