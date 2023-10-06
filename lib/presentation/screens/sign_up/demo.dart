import 'package:flutter/material.dart';
class SetupProfile extends StatefulWidget {
  const SetupProfile({Key? key}) : super(key: key);

  @override
  State<SetupProfile> createState() => _SetupProfileState();
}
TextEditingController phone = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController country= TextEditingController();
class _SetupProfileState extends State<SetupProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF006CEC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16,top: 25,bottom: 35),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [   CircleAvatar(backgroundColor: Colors.white,radius: 21,child: Icon(Icons.arrow_back_ios_new,color: Color(0xff0086ec),size: 21,),),
                    SizedBox(height: 17,),
                    Text(
                      'Set up your profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),SizedBox(height: 6,),
                    Text(
                      'One more step to access your\nQR Talki Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),

              Container(
                decoration: const BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                height: MediaQuery.of(context).size.height/1.2,width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 27),
                  child:Stack(
                    children: [
                      Column(children: [
                        TextFormField(
                          controller: phone,
                          onChanged: (value){
                            setState(() {
                            });
                          },
                          decoration: InputDecoration(
                            suffixIcon: phone.text.isNotEmpty?const Icon(Icons.check,color: Color(0xFF0086EC),):null,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            filled: true,focusColor: const Color(0xFFF0EFEF),
                            focusedBorder:const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ) ,
                            enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(8)),

                            ),
                            border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8)),

                            ),
                            labelText: "Name",
                            labelStyle: const TextStyle(
                              color: Color(0xFFA8A7A7),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),),
                        ),
                        const SizedBox(height: 16,),
                        TextFormField(
                          controller:password,
                          onChanged: (value){
                            setState(() {
                            });
                          },
                          decoration:  InputDecoration(
                            suffixIcon: password.text.isNotEmpty?const Icon(Icons.check,color: Color(0xFF0086EC),):null,
                            filled: true,focusColor: const Color(0xFFF0EFEF),
                            focusedBorder:const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(8)),

                            ) ,
                            enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(8)),

                            ),
                            border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8)),

                            ),floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: "Number",
                            labelStyle: const TextStyle(
                              color: Color(0xFFA8A7A7),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),),

                        ),
                        const SizedBox(height: 16,),
                        TextFormField(
                          controller:email,
                          onChanged: (value){
                            setState(() {
                            });
                          },
                          decoration: InputDecoration(
                            suffixIcon: email.text.isNotEmpty?const Icon(Icons.check,color: Color(0xFF0086EC),):null,
                            filled: true,focusColor: const Color(0xFFF0EFEF),
                            focusedBorder:const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(8)),

                            ) ,
                            enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(8)),

                            ),
                            border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8)),

                            ),floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: "Email",
                            labelStyle: const TextStyle(
                              color: Color(0xFFA8A7A7),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),),

                        ),
                        const SizedBox(height: 16,) ,
                        TextFormField(
                          controller:country,

                          decoration: const InputDecoration(

                            suffixIcon: Icon(Icons.arrow_drop_down_circle,color: Color(0x190086EC),),


                            filled: true,focusColor: Color(0xFFF0EFEF),
                            focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(8)),

                            ) ,
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(8)),

                            ),
                            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8)),

                            ),floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: "Country",
                            labelStyle: TextStyle(
                              color: Color(0xFFA8A7A7),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),),

                        ),

                        Container(margin: const EdgeInsets.only(top: 25,bottom: 28),
                          width: double.infinity,height: 56,decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: ElevatedButton(
                              onPressed: (){}, child:const Text(
                            'Continue',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                        ),




                      ],)
                    ],
                  ),
                ),
              ),

            ],),
        ),
      ),
    );
  }
}