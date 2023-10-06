import 'package:dotted_line/dotted_line.dart';
import 'package:fit/screen/datadetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Model/data_model.dart';
import '../bloc/data_bloc.dart';
import '../bloc/data_bloc_event.dart';
import '../bloc/data_bloc_state.dart';

class Home extends StatefulWidget {
  const Home({super.key, });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
     context.read<ProfileBloc>().add(getdataEvent());


    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text("Home"),
      // ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          BlocBuilder <ProfileBloc,ProductState>(
              builder:(context,state){
                if(state is ProductLoading){
                  CircularProgressIndicator();
                }
                if(state is ProductSuccess){

                  return Center(
                    child: Container(
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for(var i=0; i<state.model.length;i++)...[
                              InkWell(
                                onTap:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DataDetails(state.model[i])));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Text(state.model[i].name.toString(),style: GoogleFonts.alegreya(textStyle:TextStyle(color: Colors.white,decoration: TextDecoration.underline,fontSize: 19,fontWeight: FontWeight.w500),)),
                                    Text(state.model[i].tag.toString(),style:GoogleFonts.alegreya(textStyle: TextStyle(color:state.model[i].color.toString()=='red'? Colors.red:Colors.green,decoration: TextDecoration.underline,fontSize: 11)),),
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
                                ),
                              )

                            ]
                          ],
                        ),
                      )
                    ),
                  );
                  // return Text(
                  // model.item[0].name
                  // );
                }
                if(state is ProductError){
                  return Text(state.msg);                    }
                return Text('Loading...');

              }


          ),



        ],
      ),

    );

  }}
