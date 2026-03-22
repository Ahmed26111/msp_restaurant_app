import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msp_restaurant_app/util/components/default_card_menu_screen/default_card_menu.dart';

import '../burgers_menu_view_modal/burgers_menu_modal_cubit.dart';

class BurgersMenu extends StatelessWidget {
  const BurgersMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: BurgersMenuModalCubit.get(context),
        builder: (context,state){
          var cubit = BurgersMenuModalCubit.get(context);
          return Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: cubit.burgers.length,
              itemBuilder: (context,index)=> DefaultCardMenu(foodModel: cubit.burgers[index]) ,
              separatorBuilder: (context,index)=>SizedBox(height: 15,),
            ),
          );
        }
    );
  }
}
