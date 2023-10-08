import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Values extends StatefulWidget {
  final dynamic data;
   Values(this.data,{Key? key, }) : super(key: key);

  @override
  State<Values> createState() => _ValuesState();
}

class _ValuesState extends State<Values> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for(var i=0; i<widget.data.length;i++)...[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(widget.data[i].toString(),style: GoogleFonts.alegreya(textStyle:TextStyle(color: Colors.white,decoration: TextDecoration.underline,fontSize: 19,fontWeight: FontWeight.w500),)),
                        // Text(state.model[i].tag.toString(),style:GoogleFonts.alegreya(textStyle: TextStyle(color:state.model[i].color.toString()=='red'? Colors.red:Colors.green,decoration: TextDecoration.underline,fontSize: 11)),),
                        SizedBox(
                          height: 15,
                        ),
                        DottedLine(
                          // direction: Axis.horizontal,
                          // alignment: WrapAlignment.center,
                          lineLength: 300.0,
                          lineThickness: 1.0,
                          dashLength: 1.0,
                          dashColor: Colors.white,
                          // dashGradient: [Colors.red, Colors.blue],
                          dashRadius: 0.5,
                          dashGapLength: 2.0,
                          dashGapColor: Colors.transparent,
                          // dashGapGradient: [Colors.red, Colors.blue],
                          dashGapRadius: 0.0,
                        )
                      ],
                    )

                  ]
                ],
              ),
            )
        ),
      ),
    );
  }
}
