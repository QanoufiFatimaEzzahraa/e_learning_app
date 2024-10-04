import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_learning_app/pages/homePage/bloc/homePage_events.dart';
import 'package:my_learning_app/pages/homePage/bloc/homePage_states.dart';

class homePageBloc extends Bloc<homePageEvent, homePageState>{
  homePageBloc():super(homePageState()){
    on<homePageEvent>((event, emit){
      emit(homePageState(selectedIndex:state.selectedIndex));
    });
  }

}