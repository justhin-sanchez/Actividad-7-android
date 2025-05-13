import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  int _selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 5'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton.filled(
                child: Text('Value = $_selectedValue'),
                onPressed: () => showCupertinoModalPopup(
                  context: context,
                  builder: (_) => SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: CupertinoPicker(
                      backgroundColor: Colors.white,
                      itemExtent: 30,
                      scrollController: FixedExtentScrollController(
                        initialItem:
                            _selectedValue, // Initialize with the current value
                      ),
                      children: const [
                        Text('0'),
                        Text('1'),
                        Text('2'),
                        Text('3'),
                        Text('4'),
                      ],
                      onSelectedItemChanged: (int value) {
                        setState(() {
                          _selectedValue = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
