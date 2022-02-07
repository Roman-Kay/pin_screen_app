import 'package:flutter/material.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({Key? key}) : super(key: key);
  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
  }

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
                Expanded(child: SizedBox()),
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
              Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                    color: _counter > 0
                        ? const Color.fromARGB(255, 10, 207, 17)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black.withOpacity(0.2))),
              ),
              const SizedBox(width: 24),
              Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                    color: _counter > 1
                        ? const Color.fromARGB(255, 10, 207, 17)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black.withOpacity(0.2))),
              ),
              const SizedBox(width: 24),
              Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                    color: _counter > 2
                        ? const Color.fromARGB(255, 10, 207, 17)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black.withOpacity(0.2))),
              ),
              const SizedBox(width: 24),
              Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                    color: _counter > 3
                        ? const Color.fromARGB(255, 10, 207, 17)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black.withOpacity(0.2))),
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
                    TextButton(
                        onPressed: _counter > 3 ? () {} : _incrementCounter,
                        child: const Text(
                          '1',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 48,
                              fontWeight: FontWeight.w200),
                        )),
                    TextButton(
                        onPressed: _counter > 3 ? () {} : _incrementCounter,
                        child: const Text(
                          '2',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 48,
                              fontWeight: FontWeight.w200),
                        )),
                    TextButton(
                        onPressed: _counter > 3 ? () {} : _incrementCounter,
                        child: const Text(
                          '3',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 48,
                              fontWeight: FontWeight.w200),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: _counter > 3 ? () {} : _incrementCounter,
                        child: const Text(
                          '4',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 48,
                              fontWeight: FontWeight.w200),
                        )),
                    TextButton(
                        onPressed: _counter > 3 ? () {} : _incrementCounter,
                        child: const Text(
                          '5',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 48,
                              fontWeight: FontWeight.w200),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          '6',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 48,
                              fontWeight: FontWeight.w200),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: _counter > 3 ? () {} : _incrementCounter,
                        child: const Text(
                          '7',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 48,
                              fontWeight: FontWeight.w200),
                        )),
                    TextButton(
                        onPressed: _counter > 3 ? () {} : _incrementCounter,
                        child: const Text(
                          '8',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 48,
                              fontWeight: FontWeight.w200),
                        )),
                    TextButton(
                        onPressed: _counter > 3 ? () {} : _incrementCounter,
                        child: const Text(
                          '9',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 48,
                              fontWeight: FontWeight.w200),
                        )),
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
                      TextButton(
                          onPressed: _counter > 3 ? () {} : _incrementCounter,
                          child: const Text(
                            '0',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 48,
                                fontWeight: FontWeight.w200),
                          )),
                      IconButton(
                          onPressed: _counter == 0 ? () {} : _decreaseCounter,
                          icon: Image.asset("icons/backspace.png")
                          // icon: const Icon(
                          //   Icons.backspace_outlined,
                          //   color: Colors.black,
                          //   size: 35,
                          // ),
                          ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
