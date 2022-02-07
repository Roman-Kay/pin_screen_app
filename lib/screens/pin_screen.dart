import 'package:flutter/material.dart';

import '../models/numbers.dart';
import '../models/pin_container.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({Key? key}) : super(key: key);
  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter > 3 ? () {} : _counter++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      _counter == 0 ? () {} : _counter--;
    });
  }

  double width = 24;
  final color = const Color.fromARGB(255, 10, 207, 17);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 42),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                const Expanded(child: SizedBox()),
                IconButton(
                  onPressed: null,
                  icon: Image.asset("icons/question.png"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 66),
          const Text(
            'Please enter PIN code',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PinContainer(
                color: _counter > 0 ? color : Colors.white,
              ),
              SizedBox(width: width),
              PinContainer(
                color: _counter > 1 ? color : Colors.white,
              ),
              SizedBox(width: width),
              PinContainer(
                color: _counter > 2 ? color : Colors.white,
              ),
              SizedBox(width: width),
              PinContainer(
                color: _counter > 3 ? color : Colors.white,
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NumberButton(
                      number: '1',
                      onPressed: _incrementCounter,
                    ),
                    NumberButton(
                      number: '2',
                      onPressed: _incrementCounter,
                    ),
                    NumberButton(
                      number: '3',
                      onPressed: _incrementCounter,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NumberButton(
                      number: '4',
                      onPressed: _incrementCounter,
                    ),
                    NumberButton(
                      number: '5',
                      onPressed: _incrementCounter,
                    ),
                    NumberButton(
                      number: '6',
                      onPressed: _incrementCounter,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NumberButton(
                      number: '7',
                      onPressed: _incrementCounter,
                    ),
                    NumberButton(
                      number: '8',
                      onPressed: _incrementCounter,
                    ),
                    NumberButton(
                      number: '9',
                      onPressed: _incrementCounter,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.fingerprint,
                            color: Colors.black,
                            size: 35,
                          )),
                      NumberButton(
                        number: '0',
                        onPressed: _incrementCounter,
                      ),
                      IconButton(
                          onPressed: _decreaseCounter,
                          icon: Image.asset("icons/backspace.png")),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25)
        ],
      ),
    );
  }
}
