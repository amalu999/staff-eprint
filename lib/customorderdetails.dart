import 'package:flutter/material.dart';
class CustomOrderDetails extends StatefulWidget {
  final String subject;
  final String  nameOfBook;
  final String author;
  final String beg;
  final String end;
  final String pages;
  final String copies;
  final String price;
  final String  amount;
  final String student;
  final String phn;
  final String admno;

  const CustomOrderDetails({Key key, this.subject, this.nameOfBook, this.author, this.beg, this.end, this.pages, this.copies, this.price, this.amount, this.student, this.phn, this.admno}) : super(key: key);
  @override
  _CustomOrderDetailsState createState() => _CustomOrderDetailsState();
}

class _CustomOrderDetailsState extends State<CustomOrderDetails> {
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
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
        resizeToAvoidBottomPadding: true,
        body: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        text: "RANGE:   ",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(text: widget.beg,style: TextStyle(
                            fontWeight: FontWeight.normal,
                          )),
                          TextSpan(text: "-",style: TextStyle(
                            fontWeight: FontWeight.normal,
                          )),
                          TextSpan(text: widget.end,style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ))
                        ]
                    ),
                  ),
                  SizedBox(height: 20,),
                  RichText(
                    text: TextSpan(
                        text: "NO OF PAGES:   ",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(text: widget.pages,style: TextStyle(
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


                ],

              ),
            ),
          ),
        )
    );

  }
}