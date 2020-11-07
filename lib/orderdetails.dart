import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class OrderDetails extends StatefulWidget {
  final String nameOfBook;
  final String author;
  final String subject;
  final String copies;
  final String price;
  final String amount;
  final String student;
  final String phn;
  final String admno;


  const OrderDetails({Key key, this.subject, this.nameOfBook, this.author, this.copies, this.price, this.amount, this.student, this.phn, this.admno}) : super(key: key);

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {

  @override
 /* Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }*/
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
      ),
      ),
          body: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20,),

                    RichText(
                      text: TextSpan(
                          text: "SUBJECT:   ",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: widget.subject,style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ))
                          ]
                      ),
                    ),
                    SizedBox(height: 20,),
                    RichText(
                      text: TextSpan(
                          text: "NAME OF BOOK:   ",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: widget.nameOfBook,style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ))
                          ]
                      ),
                    ),
                    SizedBox(height: 20,),
                    RichText(
                      text: TextSpan(
                          text: "AUTHOR:   ",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: widget.author,style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ))
                          ]
                      ),
                    ),
                    SizedBox(height: 20,),
                    RichText(
                      text: TextSpan(
                          text: "NO OF COPIES:   ",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: widget.copies,style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ))
                          ]
                      ),
                    ),
                    SizedBox(height: 20,),
                    RichText(
                      text: TextSpan(
                          text: "PRICE:   ",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: widget.price,style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ))
                          ]
                      ),
                    ),
                    SizedBox(height: 20,),
                    RichText(
                      text: TextSpan(
                          text: "AMAOUNT:   ",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: widget.amount,style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ))
                          ]
                      ),
                    ),
                    SizedBox(height: 20,),
                    RichText(
                      text: TextSpan(
                          text: "STUDENT NAME:   ",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: widget.student,style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ))
                          ]
                      ),
                    ),
                    SizedBox(height: 20,),
                    RichText(
                      text: TextSpan(
                          text: "STUDENT PHONE NO:   ",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: widget.phn,style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ))
                          ]
                      ),
                    ),

                    SizedBox(height: 20,),
                    RichText(
                      text: TextSpan(
                          text: "STUDENT ADMISSION NO:   ",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: widget.admno,style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ))
                          ]
                      ),
                    ),

                    /*  SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("SUBJECT :",style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontWeight: FontWeight.bold)),
                ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.subject),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("BOOKNAME :",style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold)),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Text(widget.nameOfBook),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("AUTHOR :",style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.author),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("NO OF COPIES :",style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold)),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.copies),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("PRICE :",style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold)),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.price),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("AMOUNT:",style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold)),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.amount),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("STUDENT NAME:",style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold)),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.student),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("STUDENT PHONE NO:",style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold)),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.phn),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("STUDENT ADMISSION NO",style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold)),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.admno),
                    ),

                    Row(children: <Widget>[
                    RaisedButton(
                      child: Text("READ"),
                      onPressed:(){
                        //_launchInBrowser(url);
                      }, ),*/
                    SizedBox(width: 30,),
                    Row(children: <Widget>[
                      RaisedButton(
                        child: Icon(Icons.check),

                        onPressed:(){
                          //_launchInBrowser(url);
                        }, ),
                      SizedBox(width: 40,),
                      RaisedButton(child:Icon(Icons.print),onPressed:(){
                        // direct to print
                      } )
                    ],)
                  ],),
            )
            ),
          ),

    );

  }
}
