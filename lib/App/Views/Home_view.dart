import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Controllers/home_controller.dart';
import '../components/currency_box.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomeController homeController;

  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText, fromText);
  }

  @override
  build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(height: 50),
              Image.asset(
                "assets/logo2.png",
                width: 200,
                height: 200,
              ),
              Container(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    CurrencyBox(
                        controller: toText,
                        currentItem: homeController.toCurrency,
                        items: homeController.currencies,
                        onChanged: (value) => {
                              setState(
                                () => homeController.toCurrency = value!,
                              )
                            }),
                    SizedBox(height: 10),
                    CurrencyBox(
                        controller: fromText,
                        currentItem: homeController.fromCurrency,
                        items: homeController.currencies,
                        onChanged: (value) => {
                              setState(
                                () => homeController.fromCurrency = value!,
                              ),
                            }),
                  ],
                ),
              ),
              SizedBox(height: 30),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: Colors.amber,
                  primary: Colors.white,
                ),
                child: Text('CONVERTER'),
                onPressed: () => homeController.convert(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
