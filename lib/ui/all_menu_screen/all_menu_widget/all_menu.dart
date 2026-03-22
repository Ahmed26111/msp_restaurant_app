import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msp_restaurant_app/ui/all_menu_screen/all_menu_view_modal/all_menu_modal_cubit.dart';
import 'package:msp_restaurant_app/util/components/default_card_menu_screen/default_card_menu.dart';

class AllMenu extends StatelessWidget {
  const AllMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: AllMenuModalCubit.get(context),
        builder: (context,state){
          var cubit = AllMenuModalCubit.get(context);
          return Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: cubit.foods.length,
              itemBuilder: (context,index)=> DefaultCardMenu(foodModel: cubit.foods[index]) ,
              separatorBuilder: (context,index)=>SizedBox(height: 15,),
            ),
          );
        }
    );
  }
}
