import 'package:app_coffe_purchase/src/texts/lib_images.dart';
import 'package:app_coffe_purchase/src/texts/lib_texts.dart';
import 'package:app_coffe_purchase/src/utils/coffe_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/coffee_tile.dart';
import '../widgets/widgets_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeType = [
    ['Cappucino', true],
    ['Black Coffe', false],
    ['Coffee', false],
    ['Sorvete', false],
  ];
  // functions

  void coffeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeType.length; i++) {
        coffeType[i][1] = false;
      }
      coffeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20.0), child: Icon(Icons.person)),
        ],
      ),
      body: Column(
        children: [
          //find the best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Encontre o melhor café aqui!',
              style: GoogleFonts.bebasNeue(
                fontSize: 46,
              ),
            ),
          ),
          // search bar
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Busque seu café aqui...',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
              ),
            ),
          ),
          //horizontal listview of coffee types
          const SizedBox(height: 20),
          SizedBox(
              height: 20,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffeType.length,
                  itemBuilder: (context, index) {
                    return CoffeType(
                        name: coffeType[index][0],
                        isSelected: coffeType[index][1],
                        onTap: () {
                          coffeTypeSelected(index);
                        });
                  })),
          // horizontal listview
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CofeeTile(
                  valor: 1.59,
                  nameItem: 'Cappucino',
                  descricao: DescritionItems.descCappucino,
                  image: CoffeNames.cappucino,
                ),
                CofeeTile(
                  valor: 2.78,
                  nameItem: 'Sorvete coffee',
                  descricao: DescritionItems.descSorvete,
                  image: CoffeNames.sorvete,
                ),
                CofeeTile(
                  valor: 2.78,
                  nameItem: 'Café Preto',
                  descricao: DescritionItems.descCafe,
                  image: CoffeNames.cafe,
                ),
                CofeeTile(
                  valor: 2.78,
                  nameItem: 'Café',
                  descricao: DescritionItems.descCafe,
                  image: CoffeNames.coffee,
                ),
              ],
            ),
          )

          //
        ],
      ),
    );
  }
}
