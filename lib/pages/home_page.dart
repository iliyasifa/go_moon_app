import 'package:flutter/material.dart';
import '../widgets/custom_drop_down_button.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Stack(
            children: [
              Positioned(
                bottom: _deviceHeight * 0.25,
                right: _deviceWidth * 0.01,
                child: _astroImageWidget(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  _bookRideWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/astro_moon.png'),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      '#GO MOON',
      style: TextStyle(
        color: Colors.white,
        fontSize: 60,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    return CustomDropDownButtonClass(
      values: const ['Tesla Station', 'Chan Station'],
      width: _deviceWidth,
    );
  }

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButtonClass(
          values: const ['1', '2', '3', '4'],
          width: _deviceWidth * 0.45,
        ),
        CustomDropDownButtonClass(
          values: const ['Economy', 'Bussiness', 'cheap'],
          width: _deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _bookRideWidget() {
    return Container(
      // color: Colors.amber,
      padding: const EdgeInsets.only(bottom: 10),
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellersInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        child: const Text(
          'Book Ride!',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {},
      ),
    );
  }
}
