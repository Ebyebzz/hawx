import 'package:flutter/material.dart';
//import 'package:flutter_titled_container/flutter_titled_container.dart';
class UserPro extends StatelessWidget {
  const UserPro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 255, 255, 255),
       appBar: AppBar(
          backgroundColor: Colors.transparent,
bottomOpacity: 0.0,
elevation: 0.0,
          leading: IconButton(
    onPressed: () {
       Navigator.of(context).pop();
    },
    icon: const Icon(Icons.arrow_back),
          color: Color.fromARGB(255, 26, 117, 159),),),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Container(  
              margin: const EdgeInsets.only(left: 10,right: 10,top: 10,),
              child: Row(
                children: [ 
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children:  const [
                        Padding(  
                          padding: EdgeInsets.only(left: 35.0),
                          child: SizedBox(
                            width: 116,
                              child: Text(
                                "Name",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                              ),
                              
                              ),
                          ),
                        ),
                        //const SizedBox(height: 10,)
                      ],
                  ),
                       
                    ],
                  ),
      
                   Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        
                        padding: const EdgeInsets.only(left: 29),
                        child: Container(
                          height: 150,
                          width: 150,
                          foregroundDecoration: const BoxDecoration(
          image: DecorationImage(
         image: AssetImage("assets/user.png"),
          fit: BoxFit.cover),
         // borderRadius:BorderRadius.all() ,
        ),
                          
                         
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ), 
             Padding(
                  padding: const EdgeInsets.only(top: 150,bottom: 50),
                  child: Container(
                    height: 350,
                    width: 400,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      border: Border.all(width: 2,color:  Color.fromRGBO(52, 161, 195, 1)),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(21),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                          //  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>const qrpage()));
                          },
                          child: Row(
                            children: const [
                              
                              Padding(
                                padding: EdgeInsets.fromLTRB(50, 5, 0, 0),
                                child: Text(
                                    "Reports",
                                style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                              ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(150, 5, 0, 0),
                                child: Icon(
                                  Icons.report_gmailerrorred,
                                  size: 43.5,
                                  color:  Color.fromRGBO(52, 161, 195, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          color:  Color.fromRGBO(52, 161, 195, 1),
                          thickness: 2,
                        ),
                        InkWell(
                          onTap: (){
                           // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext)=>const patientpg()));
                          },
                            child: Row(
                              children: const [
                                 Padding(
                                padding: EdgeInsets.fromLTRB(50, 5, 0, 0),
                                child: Text(
                                    "Rewards",
                                style: TextStyle(
                                color: Color.fromRGBO(19, 86, 109, 1),
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                              ),
                                ),
                              ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(150, 5, 0, 0),
                                  child: Icon(
                                    Icons.wallet_giftcard_rounded,
                                    size: 43.5,
                                      color: Color.fromRGBO(52, 161, 195, 1)
                                  ),
                                ),
                               
                              ],
                            ),
                        ),
                        const Divider(
                          color:  Color.fromRGBO(52, 161, 195, 1),
                          thickness: 2,
                        ),
                        InkWell(
                          onTap: (){},
                          child: Row(
                            children: const [
                               Padding(
                                padding: EdgeInsets.fromLTRB(50, 5, 0, 0),
                                child: Text(
                                    "Help & Support",
                                style: TextStyle(
                                color: Color.fromRGBO(19, 86, 109, 1),
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                              ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(90, 5, 0, 0),
                                child: Icon(
                                  Icons.help_outline_sharp,
                                  size: 43.5,
                                    color:  Color.fromRGBO(52, 161, 195, 1)
                                ),
                              ),
                             
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
          ],
        ),
      ),
    );
  }
}

class _UserProState {
}
