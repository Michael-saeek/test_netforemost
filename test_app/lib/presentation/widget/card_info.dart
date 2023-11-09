import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {

  final String? title;
  final String? image;
  final String? author;
  final String? date;

  const CardInfo({
    super.key, 
    this.title, 
    this.image, 
    this.author, 
    this.date
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Row(
        children: [
          Container(
            decoration: ShapeDecoration(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            width: 137,
            height: 172,
    
          ),
    
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 172,
            width: 211,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    // overflow: TextOverflow.ellipsis,
                    // maxLines: 4,
                    title ?? 'Monarch population soars 4,900 percent since last year in thrilling 2021 western migration',
                    style: const TextStyle(
                      
                      color: Color(0xFF180E19),
                      fontSize: 14,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w700,
    
                    ),
                  ),
                ),
          
                Text(
                  author ?? 'By Andy Corbley',
                  style: const TextStyle(
                    color: Color(0xFF909090),
                    fontSize: 13,
                    fontFamily: 'SF Pro',
                    letterSpacing: -0.17,
                  ),
                ),
    
                const Text(
                  'World',
                  style: TextStyle(
                    color: Color(0xFF69BDFD),
                    fontSize: 13,
                    fontFamily: 'SF Pro',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: -0.17,
                  ),
                ),
          
                Text(
                  date ?? 'March 01, 2023 ',
                  style: const TextStyle(
                    color: Color(0xFF909090),
                    fontSize: 13,
                    fontFamily: 'SF Pro',
                    letterSpacing: -0.17,
                  ),
                )
              ],
            ),
          )
        ], 
      ),
    );
  }
}

