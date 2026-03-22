import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msp_restaurant_app/ui/pizzas_menu_screen/pizzas_menu_view_modal/pizzas_menu_modal_cubit.dart';
import 'package:msp_restaurant_app/util/components/default_card_menu_screen/default_card_menu.dart';

class PizzasMenu extends StatelessWidget {
  const PizzasMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: PizzasMenuModalCubit.get(context),
        builder: (context,state){
          var cubit = PizzasMenuModalCubit.get(context);
          return Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: cubit.pizzas.length,
              itemBuilder: (context,index)=> DefaultCardMenu(foodModel: cubit.pizzas[index]) ,
              separatorBuilder: (context,index)=>SizedBox(height: 15,),
            ),
          );
        }
    );
  }
}
