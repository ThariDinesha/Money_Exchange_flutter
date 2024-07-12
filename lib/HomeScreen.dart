import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController num1controller = TextEditingController();
  final TextEditingController num2controller = TextEditingController();

  double price = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Center(
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(50.0),
                          child: Text(
                            'Dollar to LKR',
                            style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 229, 204, 150)),
                          ),
                        ),
                        TextField(
                          controller: num1controller,
                          keyboardType: TextInputType.number,
                           style: const TextStyle(
                            color: Colors.white
                           ),
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Doller', hintStyle: TextStyle(color: Colors.grey)),
                              
                              
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        MaterialButton(
                          onPressed: () {
                            double num1 = double.parse(num1controller.text);

                            setState(() {
                              price = num1 * 302.310;
                            }); 
                          },
                          color: Colors.lightBlue,
                          child: const Text(
                            'Generate',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                                
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'LKR Rs $price',
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ],
                    )))));
  }
}
