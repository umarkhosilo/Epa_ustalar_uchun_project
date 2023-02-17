import '../../libruaryclass.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  String binotitle = "Tanlash";
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<RegionProvider>(context, listen: false).getdata();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<RegionProvider>(
        builder: (BuildContext context, RegionProvider snapshot, child) {
          if (snapshot.isLoading) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.green,
                strokeWidth: 5,
              ),
            );
          }
          return DropdownButtonFormField2<RegionModel>(
            dropdownMaxHeight: 300.h,
            hint: Text("Tanlash"),
            icon: Icon(Icons.arrow_drop_down),
            buttonHeight: 60,
            items: snapshot.data
                .map((v) => DropdownMenuItem<RegionModel>(
                      value: v,
                      child:  Text(v.title.toString()),
                    ))
                .toList(),
            onChanged: (_value) {
              binotitle = (_value.toString());
            },
          );
        },
      ),
    );
  }
}
