import 'package:blocbase/app/bloc/home/home_event.dart';
import 'package:blocbase/app/bloc/home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  HomeBloc(): super(HomeInitState());


  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    // String userInfor = SpUtil.getString(StringConst.inForComp)!;
    // UserInfoComp userInfoComp = UserInfoComp.fromJson(jsonDecode(userInfor));

    if(event is HomeListEvent){
      yield HomeLoadingState();

    }



    // if (event is UpdateInforCompEvent) {
    //   yield SettingLoading();
    //   final res = await settingRepo.updateInforCompany(
    //       nameComp: event.nameComp,
    //       phoneComp: event.phoneComp,
    //       addressComp: event.addressComp,
    //       id: event.id);
    //   ResultRegisterCompany rest = resultRegisterCompanyFromJson(res.data);
    //   if (rest.data!.result == true) {
    //     userInfoComp.comName = event.nameComp;
    //     userInfoComp.comPhone = event.phoneComp;
    //     userInfoComp.comAddress = event.addressComp;
    //     String userInfor = jsonEncode(userInfoComp.toJson());
    //     SpUtil.putString(StringConst.inForComp, userInfor);
    //     yield UpdateInforCompSuccess(msg: rest.data!.message);
    //   } else {
    //     yield SettingError(msg: rest.error!.message);
    //   }
    // }
  }
}