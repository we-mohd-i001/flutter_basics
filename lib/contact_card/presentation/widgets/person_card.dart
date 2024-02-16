import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  final String name;
  final String age;
  final String country;
  final String job;
  final String imageUrl;
  const PersonCard({
    super.key,
    required this.name,
    required this.age,
    required this.country,
    required this.job,
    required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      
      width: size.width-40,
      height: size.height*0.22,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.deepPurple,Colors.white70, Colors.pink],
          ) ,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Row(

        children: [
          const SizedBox(width: 10,),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(imageUrl)
                ),

              ),

            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
                  const SizedBox(height: 8,),
                  Text(job, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),),
                  const SizedBox(height: 2,),
                  Text(age, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),),
                  const SizedBox(height: 2,),
                  Text(country, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),)
                ],
          ))
        ],

      ),
    );
  }
}
