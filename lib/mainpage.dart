import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

double _sliderwidth = 300.0;
double _sliderheight = 300;
Color _containercolor = Colors.orangeAccent;
bool _addchild = false;
double _spread = 0;
double _blur = 0;
double _axisx = 0;
double _axisy = 0;
double _spreadch = 0;
double _blurch = 0;
double _axisxch = 0;
double _axisych = 0;

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: AppBar(
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(icon: Icon(Icons.wb_shade_outlined)),
                Tab(icon: Icon(Icons.wb_shade_outlined)),
              ],
            ),
            title: const Text('Container Properties',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
            backgroundColor: Colors.orangeAccent,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Container(
              width: double.infinity,
              height: 350,
              decoration: const BoxDecoration(
                color: Color(0xddeeeeeee),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                                width: 100,
                                child: Text("Width: ${_sliderwidth.round()}")),
                            Expanded(
                              child: Slider(
                                  value: _sliderwidth,
                                  label: _sliderwidth.toString(),
                                  activeColor: Colors.orangeAccent,
                                  inactiveColor: Colors.grey,
                                  onChanged: (double value) {
                                    setState(() {
                                      _sliderwidth = value;
                                    });
                                  },
                                  min: 100.0,
                                  max: 300.0),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                                width: 100,
                                child:
                                    Text("Height: ${_sliderheight.round()}")),
                            Expanded(
                              child: Slider(
                                  value: _sliderheight,
                                  label: _sliderheight.toString(),
                                  activeColor: Colors.orangeAccent,
                                  inactiveColor: Colors.grey,
                                  onChanged: (double value) {
                                    setState(() {
                                      _sliderheight = value;
                                    });
                                  },
                                  min: 100.0,
                                  max: 300.0),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  _containercolor = Colors.black;
                                });
                              },
                              backgroundColor: Colors.black,
                              child: const Text(
                                'Black',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  _containercolor = Colors.redAccent;
                                });
                              },
                              backgroundColor: Colors.redAccent,
                              child: const Text('Red'),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  _containercolor = Colors.greenAccent;
                                });
                              },
                              backgroundColor: Colors.greenAccent,
                              child: const Text('Green'),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  _containercolor = Colors.blueAccent;
                                });
                              },
                              backgroundColor: Colors.blueAccent,
                              child: const Text('Blue'),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  _containercolor = Colors.orangeAccent;
                                });
                              },
                              backgroundColor: Colors.orangeAccent,
                              child: const Text('Orange'),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _addchild = !_addchild;
                              });
                            },
                            child: const Text('add/delete child in it')),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 40),
                        const Text(
                          'Main Container Shadow',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                                width: 100,
                                child: Text(
                                  "Spread: ${_spread.round()}",
                                  textAlign: TextAlign.right,
                                )),
                            Expanded(
                              child: Slider(
                                  value: _spread,
                                  label: _spread.toString(),
                                  activeColor: Colors.orangeAccent,
                                  inactiveColor: Colors.grey,
                                  onChanged: (double value) {
                                    setState(() {
                                      _spread = value;
                                    });
                                  },
                                  min: 0.0,
                                  max: 20.0),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                                width: 100,
                                child: Text(
                                  "Blur: ${_blur.round()}",
                                  textAlign: TextAlign.end,
                                )),
                            Expanded(
                              child: Slider(
                                  value: _blur,
                                  label: _blur.toString(),
                                  activeColor: Colors.orangeAccent,
                                  inactiveColor: Colors.grey,
                                  onChanged: (double value) {
                                    setState(() {
                                      _blur = value;
                                    });
                                  },
                                  min: 0,
                                  max: 50),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                                width: 100,
                                child: Text(
                                  "Offset Y: ${_axisx.round() - 50}",
                                  textAlign: TextAlign.right,
                                )),
                            Expanded(
                              child: Slider(
                                  value: _axisx,
                                  label: _axisx.toString(),
                                  activeColor: Colors.orangeAccent,
                                  inactiveColor: Colors.grey,
                                  onChanged: (double value) {
                                    setState(() {
                                      _axisx = value;
                                    });
                                  },
                                  min: 0.0,
                                  max: 100.0),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                                width: 100,
                                child: Text(
                                  "Offset X: ${_axisy.round() - 50}",
                                  textAlign: TextAlign.right,
                                )),
                            Expanded(
                              child: Slider(
                                  value: _axisy,
                                  label: _axisy.toString(),
                                  activeColor: Colors.orangeAccent,
                                  inactiveColor: Colors.grey,
                                  onChanged: (double value) {
                                    setState(() {
                                      _axisy = value;
                                    });
                                  },
                                  min: 0.0,
                                  max: 100.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 40),
                        const Text(
                          'Child Container Shadow',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                                width: 100,
                                child: Text(
                                  "Spread: ${_spreadch.round()}",
                                  textAlign: TextAlign.right,
                                )),
                            Expanded(
                              child: Slider(
                                  value: _spreadch,
                                  label: _spreadch.toString(),
                                  activeColor: Colors.orangeAccent,
                                  inactiveColor: Colors.grey,
                                  onChanged: (double value) {
                                    setState(() {
                                      _addchild=true;
                                      _spreadch = value;
                                    });
                                  },
                                  min: 0.0,
                                  max: 20.0),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                                width: 100,
                                child: Text(
                                  "Blur: ${_blurch.round()}",
                                  textAlign: TextAlign.end,
                                )),
                            Expanded(
                              child: Slider(
                                  value: _blurch,
                                  label: _blurch.toString(),
                                  activeColor: Colors.orangeAccent,
                                  inactiveColor: Colors.grey,
                                  onChanged: (double value) {
                                    setState(() {
                                      _addchild=true;
                                      _blurch = value;
                                    });
                                  },
                                  min: 0,
                                  max: 50),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                                width: 100,
                                child: Text(
                                  "Offset Y: ${_axisxch.round() - 50}",
                                  textAlign: TextAlign.right,
                                )),
                            Expanded(
                              child: Slider(
                                  value: _axisxch,
                                  label: _axisxch.toString(),
                                  activeColor: Colors.orangeAccent,
                                  inactiveColor: Colors.grey,
                                  onChanged: (double value) {
                                    setState(() {
                                      _addchild=true;
                                      _axisxch = value;
                                    });
                                  },
                                  min: 0.0,
                                  max: 100.0),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                                width: 100,
                                child: Text(
                                  "Offset X: ${_axisych.round() - 50}",
                                  textAlign: TextAlign.right,
                                )),
                            Expanded(
                              child: Slider(
                                  value: _axisych,
                                  label: _axisy.toString(),
                                  activeColor: Colors.orangeAccent,
                                  inactiveColor: Colors.grey,
                                  onChanged: (double value) {
                                    setState(() {
                                      _addchild=true;
                                      _axisych = value;
                                    });
                                  },
                                  min: 0.0,
                                  max: 100.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Align(
              child: AnimatedContainer(
                clipBehavior: Clip.hardEdge,
                curve: Curves.easeInOutCubic,
                width: _sliderwidth,
                height: _sliderheight,
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(color: _containercolor, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    spreadRadius: _spread,
                    blurRadius: _blur,
                    offset: Offset(_axisx - 50, _axisy - 50),
                  )
                ]),
                child: (_addchild)
                    ? Align(
                        child: Container(
                        height: _sliderheight / 3,
                        width: _sliderwidth / 3,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(.5),
                                  spreadRadius: _spreadch,
                                  blurRadius: _blurch,
                                  offset: Offset(_axisxch - 50, _axisych - 50)),
                            ],
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/dog.jpeg'),
                                fit: BoxFit.cover)),
                      ))
                    : null,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
