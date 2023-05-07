import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 50,),

          Container(
            padding: const EdgeInsets.only(left: 30),
            child: const Text("str_title", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),).tr(),
          ),

          Row(
            children: [
              const SizedBox(width: 10,),
              Expanded(
                child: MaterialButton(
                  color: Colors.green,
                  onPressed: (){
                    context.setLocale(const Locale('en', 'US'));
                  },
                  child: const Text("English", style: TextStyle(color: Colors.white),),
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: (){
                    context.setLocale(const Locale('ko', 'KR'));
                  },
                  child: const Text("Korean", style: TextStyle(color: Colors.white),),
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: MaterialButton(
                  color: Colors.blue,
                  onPressed: (){
                    context.setLocale(const Locale('ja', 'JP'));
                  },
                  child: const Text("Japanese", style: TextStyle(color: Colors.white),),
                ),
              ),
              const SizedBox(width: 10,),
            ],
          ),
        ],
      ),
    );
  }
}
