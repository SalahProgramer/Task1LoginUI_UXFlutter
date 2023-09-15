import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
bool passowrd=true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
       backgroundColor: Colors.deepOrange,
        body: Container(
          margin: EdgeInsets.only(top: 100),
 child: Column(
   crossAxisAlignment: CrossAxisAlignment.start,
   children: [
Container(          margin: EdgeInsets.only(left: 20),

  child: Text("Login",style: TextStyle(fontSize: 50,color: Colors.white),),
)
,Container( width: 400,           margin: EdgeInsets.only(left: 20),

  child: Text("Welcome Back",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w200)),),
     Container(
       width: 500,
       height: 445,
       margin: EdgeInsets.only(top: 50),
       padding: EdgeInsets.fromLTRB(20, 60, 20,40),

       decoration: BoxDecoration(
         color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60)),




       ),
       child: Column(

         children: [
Container(
  height: 140,
  width: double.maxFinite,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),
      color: Colors.white,

      boxShadow: [
      BoxShadow(color: Colors.red,blurRadius: 40)



    ]



  ),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    TextFormField(

      decoration: InputDecoration(
     labelText: "Email or Phone number",

        prefixIcon: Icon(Icons.email)


      ),
keyboardType: TextInputType.text,


    ),TextFormField( obscureText: passowrd,
      decoration: InputDecoration(
        labelText: "Password",

        suffixIcon: IconButton(
          onPressed: (){

            setState(() {
              passowrd= !passowrd;
            });

          }, icon: Icon(Icons.visibility_off),
        ),
        prefixIcon: Icon(Icons.password),
        border: InputBorder.none,


    ),
    keyboardType: TextInputType.visiblePassword,
    )


  ],

),
  // decoration: BoxDecoration(
  //   boxShadow:
  //   [
  //     BoxShadow(color: Colors.black,blurRadius: 8,offset: Offset(6,5))]
  //
  //
  // ),

)
,Container(
             margin: EdgeInsets.only(top: 20),
             child: Text("Forgot password?",style: TextStyle(color: Colors.black54),),
           )
         ,Container(
             width: 200,
             margin: EdgeInsets.only(top: 20),
             child: TextButton.icon(
             onPressed:(){





             } ,
               icon: Icon(Icons.login_rounded),

               style: TextButton.styleFrom(
                 backgroundColor: Colors.red,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(40))
                 )




               ), label: Text("Login",style: TextStyle(color: Colors.white),),



             ),







           )
,Container(
             width: 200,
             margin: EdgeInsets.only(top: 20),
             child: Text("Continue with social media",style: TextStyle( color: Colors.black54),textAlign: TextAlign.center,),
           )
         ,
         Container(

           margin: EdgeInsets.only(top: 10),
           child: Row(

           children: [
                Container(

               margin: EdgeInsets.only(right: 60),
                  width:150,child: TextButton.icon(
               onPressed:(){





               } ,

               icon: Icon(Icons.facebook),

               style: TextButton.styleFrom(
                   backgroundColor: Colors.amberAccent,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(Radius.circular(40))
                   )




               ), label: Text("Facebook",style: TextStyle(color: Colors.white),),



             ),
             )
             ,Container(
               width: 150,
               child: TextButton.icon(
                 onPressed:(){





                 } ,
                 icon: Icon(Icons.gite),

                 style: TextButton.styleFrom(
                     backgroundColor: Colors.black,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.all(Radius.circular(40))
                     )




                 ), label: Text("Github",style: TextStyle(color: Colors.white),),



               ),

             )


           ],
         ),)
         ],

       ),



     )

   ],
 ),




        ),


        ),





    );
  }
}

