import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msp_restaurant_app/ui/ice-creams_menu_screen/ice-creams_menu_view_modal/ice_cream_menu_modal_cubit.dart';
import 'package:msp_restaurant_app/util/components/default_card_menu_screen/default_card_menu.dart';

class IceCreamMenu extends StatelessWidget {
  const IceCreamMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: IceCreamMenuModalCubit.get(context),
        builder: (context,state){
          var cubit = IceCreamMenuModalCubit.get(context);
          return Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: cubit.iceCreams.length,
              itemBuilder: (context,index)=> DefaultCardMenu(foodModel: cubit.iceCreams[index]) ,
              separatorBuilder: (context,index)=>SizedBox(height: 15,),
            ),
          );
        }
    );
  }
}

