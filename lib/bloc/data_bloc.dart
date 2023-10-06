import 'dart:convert';

import 'package:bloc/bloc.dart';

import '../Repository/data_repo.dart';
import 'data_bloc_event.dart';
import 'data_bloc_state.dart';

import 'package:http/http.dart' as http;


class ProfileBloc extends Bloc<ProductEvent,ProductState>{
  final WebServise webServise;
  ProfileBloc(this.webServise):super(ProfileInitiate()){
    on<getdataEvent>((event, emit) => _callApi(event,emit));
  }
  _callApi(getdataEvent event,Emitter<ProductState> emit)async{

    try{
      emit(ProfileInitiate());
      var data = await webServise.callProfileApi();
      emit(ProductSuccess(data));
    }
    catch(e){
      print(e);
      emit(ProductError("$e"));
    }

  }
}