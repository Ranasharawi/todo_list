import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/cubit/cubit.dart';
import 'package:todo_list/cubit/states.dart';
import 'package:todo_list/shared_componentes.dart';


class NewTasksScreenScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        var tasks = AppCubit.get(context).newTasks;
        return tasksBuilder(tasks: tasks);
      },
    );
  }
}
