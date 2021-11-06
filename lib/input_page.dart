import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            //Widged jenis kelamin
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Colors.blueGrey,
                    lebar: 100.0,
                    tinggi: 100.0,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Colors.blueGrey,
                    lebar: 100.0,
                    tinggi: 200.0,
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                // Widged tinggi
                Expanded(
                  child: ReusableCard(
                    colour: Colors.blueGrey.shade600,
                    lebar: 179.0,
                    tinggi: 100.0,
                  ),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                // Widget mengatur berat dan umur
                Expanded(
                  child: ReusableCard(
                    colour: Colors.blueGrey.shade700,
                    lebar: 100.0,
                    tinggi: 200.0,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Colors.blueGrey.shade700,
                    lebar: 100.0,
                    tinggi: 100.0,
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                // widged mengatur tombol hitung
                Expanded(
                  child: ReusableCard(
                    colour: Colors.blueGrey.shade800,
                    lebar: 100.0,
                    tinggi: 200.0,
                  ),
                )
              ],
            ))
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.tinggi, required this.lebar});

  Color colour;
  double tinggi, lebar;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour, //Color(0xFF1D1E33)
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: tinggi, //200.0,
      width: lebar, //179.0,
    );
  }
}
