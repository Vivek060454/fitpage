import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Listofindicator extends StatefulWidget {
  final dynamic studytype;
  final dynamic defaultvalue;
   Listofindicator({Key? key, this.studytype,this.defaultvalue }) : super(key: key);

  @override
  State<Listofindicator> createState() => _ListofindicatorState();
}

class _ListofindicatorState extends State<Listofindicator> {
  final TextEditingController parameter =  TextEditingController();
  @override
  void initState() {
   parameter==widget.defaultvalue.toString()??'';


    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
        Center(
        child: Container(
        color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text(widget.studytype.toString(),style: GoogleFonts.alegreya(textStyle:TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),)),
                              SizedBox(height: 10,),
                              Text('Set Parameters',style:  GoogleFonts.alegreya(textStyle:TextStyle(color: Colors.white,fontSize: 11)),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 300,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child:Table(
                                        children: [
                                          TableRow(
                                            children: [
                                              Text('Set Parameters',style:  GoogleFonts.alegreya(textStyle:TextStyle(color: Colors.white,fontSize: 11)),),
                                        TextFormField(
                                          autofocus: false,
                                          controller: parameter,
                                          keyboardType: TextInputType.emailAddress,
                                          onSaved: (value) {
                                            parameter.text = value!;
                                          },
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(

                                              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),

                                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),

                                        )
                                            ]
                                          )
                                        ],
                                      )
                                    )),
                              ),
                            ],
                          ),
                        )),
                  ),

                ],
              ),
            )
        ),
      )
          ],
        ),
      )
    );
  }
}
