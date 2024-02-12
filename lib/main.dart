import 'package:flutter/material.dart';
import 'package:fruitapp/FruitDataModel.dart';
import 'package:fruitapp/FruitDetail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<String> fruitname = [
    'Apple',
    'Banana',
    'Mango',
    'Orange',
    'pineapple'
  ];

  static List url = [
    'https://w7.pngwing.com/pngs/399/447/png-transparent-red-apple-illustration-juice-apple-fruit-graphy-red-apple-natural-foods-food-leaf-thumbnail.png',
    'https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg',
    'https://w7.pngwing.com/pngs/790/811/png-transparent-sliced-mangoe-juice-mango-alphonso-fruit-flavor-mango-food-dried-fruit-tropical-fruit-thumbnail.png',
    'https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg',
    'https://5.imimg.com/data5/GJ/MD/MY-35442270/fresh-pineapple-500x500.jpg'
  ];


static List<String> descriptions = [
  'แอปเปิ้ล (Apple) ควรทานทั้งเปลือกเพราะมีสารอาหารต่างๆมากมาย หากปอกเปลือกสารสำคัญต่างๆก็จะลดลงไป เพียงแค่รับประทานแอปเปิ้ลวันละ 1 ผล ก็ทำให้สุขภาพแข็งแรงห่างจากโรคภัยแบบสบายๆ นี่คือประโยชน์ของแอปเปิ้ลที่คุณต้องร้องว้าวเลยล่ะ!',
  'กล้วย (Banana) ที่นิยมรับประทานกันในบ้านเรานั้นมีอยู่หลากหลายสายพันธุ์ เช่น กล้วยหอม กล้วยน้ำว้า กล้วยไข่ กล้วยหักมุก เป็นต้น แต่สำหรับต่างชาติแล้วกล้วยที่นิยมมากที่สุดคงหนีไม่พ้นกล้วยหอม เนื่องจากกลิ่นหอมที่เป็นเอกลักษณ์ ถ้าพูดถึงเรื่องประโยชน์แล้วมีงานวิจัยชิ้นหนึ่งระบุชัดเจนว่าการรับประทานกล้วยแค่ 2 ลูกจะช่วยเพิ่มพลังงานในร่างกายได้เทียบเท่ากับการออกกำลังกายถึง 90 นาทีเลยทีเดียว !',
  'มะม่วง (Mango) จัดเป็นต้นไม้ แบบไม้ยืนต้น เติบโตได้ดีในเขตร้อน ลำต้นตรงยาว สูง 10 – 15 เมตร พุ่มไม้มีลักษณะเป็นรูปครึ่งวงกลมหรือรูปไข่ ใบเป็นใบเดี่ยว เรียงตัวแบบสลับบนกิ่ง รูปหอกยาว แกมขอบขนาน โคนมนแหลม ดอกออกเป็นช่อที่ปลายกิ่ง สีของดอกแตกต่างกันไป ขึ้นอยู่กับสายพันธุ์ มีทั้งสีแดง ชมพู หรือ ขาว',
  'ส้ม  (Orange) คือ ผลไม้ในตระกูล Citrus รสชาติเปรี้ยวปนหวาน กลิ่นหอม มีวิตามินซีสูง หลากหลายสายพันธุ์ ราคาไม่แพง อุดมไปด้วยสรรพคุณทางยา เป็นประโยชน์ต่อสุขภาพร่างกาย หาซื้อได้ตามตลาด ร้านสะดวกซื้อ สามารถนำมาแปรรูปเป็นอาหาร ขนม หรือเครื่องดื่ม ซึ่งรับประทานได้ทุกเพศ วัย ไม่ใช่แค่ผลของมันเพียงอย่างเดียว เปลือกก็นำมาทำเป็นผลิตภัณฑ์บำรุงผิว น้ำมันหอมระเหยได้อีก แต่ก็มีข้อควรระวังหากรับประทานโดยไม่ถูกสุขลักษณะ อาจเกิดผลเสียได้',
  'สับปะรด (Pineapple) จัดเป็นผลไม้เพื่อสุขภาพอีกชนิดหนึ่ง โดยประโยชน์ของสับปะรดนั้นมีอยู่หลากหลาย เพราะอุดมไปด้วยแร่ธาตุและวิตามินต่าง ๆ จำนวนมาก ซึ่งได้แก่ คาร์โบไฮเดรต วิตามินซี วิตามินบี 1 วิตามินบี 2 วิตามินบี 3 วิตามินบี 5 วิตามินบี 6 กรดโฟลิก ธาตุแคลเซียม ธาตุโพแทสเซียม ธาตุแมกนีเซียม ธาตุแมงกานีส ธาตุฟอสฟอรัส ธาตุเหล็ก ธาตุสังกะสี เป็นต้น'
];

final List<FruitDataModel> Fruitdata = List.generate(
    fruitname.length,
    (index) => FruitDataModel('${fruitname[index]}', '${url[index]}',
        '${descriptions[index]}'));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pass Data from ListView to next Screen'),
        ),
        body: ListView.builder(
            itemCount: Fruitdata.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(Fruitdata[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(Fruitdata[index].ImageUrl),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FruitDetail(
                              fruitDataModel: Fruitdata[index],
                            )));
                  },
                ),
              );
            }));
  }
}