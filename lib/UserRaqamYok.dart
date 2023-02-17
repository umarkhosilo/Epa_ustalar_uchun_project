import 'package:eppa/Boglanish.dart';
import 'libruaryclass.dart';

class UserRaqamYpkPage extends StatefulWidget {
  const UserRaqamYpkPage({Key? key}) : super(key: key);

  @override
  State<UserRaqamYpkPage> createState() => _UserRaqamYpkPageState();
}

class _UserRaqamYpkPageState extends State<UserRaqamYpkPage> {
  TextEditingController _newfounecontrol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40.w,),
              Text(
                "Telefon raqamingizni",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "kiriting",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 27.w),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  margin: EdgeInsets.symmetric(horizontal: 28.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(189, 189, 189, 1))),
                  child: TextFormField(
                    controller: _newfounecontrol,
                    maxLength: 12,
                    decoration: InputDecoration(border: InputBorder.none),
                  )),
              SizedBox(
                height: 16,
              ),
              Container(
                  width: 328,
                  height: 54,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
      
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> UserRaqamPage()));
                      usernames.userfoune = _newfounecontrol.text;
                      setState(() {});
                      },
                      child: Text("Ok"))),
                      SizedBox(height: 298),
                       Container(
                  width: 328,
                  height: 54,
                  child: ElevatedButton(
      
                      style: ElevatedButton.styleFrom(primary: Colors.red),
      
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BoglanishPage()));
                      },
                      child: Text("Biz bilan bog’lanish"))),
      
       
            ],
          ),
        ),
      ),
    );
  }
}
