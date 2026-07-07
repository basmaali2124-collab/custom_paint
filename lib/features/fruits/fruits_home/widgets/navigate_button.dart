import 'package:flutter/material.dart';

class NavigateButton extends StatelessWidget {
   NavigateButton({
    super.key,this.premium=false ,required this.iconData, required this.buttonName, required this.onPressed,
  });
 final IconData iconData;
 final String buttonName;
 final VoidCallback onPressed;
 bool premium;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: 50,height: 50,
          child:IconButton(
            style: IconButton.styleFrom(backgroundColor:Color(0xF86B6D6B),foregroundColor:  Colors.white  ),
            iconSize: 30,
            onPressed: onPressed,
            icon:!premium?  Icon(iconData ):Text('♔',style: TextStyle(color: Colors.white,fontSize: 35),),
          )
        ),
        Text(buttonName,style: TextStyle(color:Colors.white,fontSize: 12),)
      ],
    );
  }
}
