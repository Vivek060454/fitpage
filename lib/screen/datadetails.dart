import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataDetails extends StatefulWidget {
  final dynamic data;
   DataDetails(this.data,{Key? key, }) : super(key: key);

  @override
  State<DataDetails> createState() => _DataDetailsState();
}

class _DataDetailsState extends State<DataDetails> {
  @override
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
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                              color: Colors.blue,
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text(widget.data.name.toString(),style: GoogleFonts.alegreya(textStyle:TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w500),)),
                                Text(widget.data.tag.toString().replaceAll(r"\xx",''),style:  GoogleFonts.alegreya(textStyle:TextStyle(color:widget.data.color.toString()=='red'? Colors.red:Colors.green,fontSize: 11)),),

                              ],
                            ),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              for(var i=0;i<widget.data.criteria.length;i++)...[

                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(widget.data.criteria[i].text.toString(),style: GoogleFonts.alegreya(textStyle:TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w500),),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text('and',style: GoogleFonts.alegreya(textStyle:TextStyle(color: Colors.white,)),),
                                ),

                              ]
                              // Text(widget.data.name.toString(),style: TextStyle(color: Colors.white,),),
                              // Text(widget.data.tag.toString(),style: TextStyle(color:widget.data.color.toString()=='red'? Colors.red:Colors.green,decoration: TextDecoration.underline,),),

                            ],
                          ),
                        ),
                         SizedBox(
                          height: 15,
                        ),

                      ],
                    ),
                  )
              ),
            ),
          ],
        ),
      )
    );
  }
}
