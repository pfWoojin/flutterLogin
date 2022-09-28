import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrsystem/pages/home/qr.dart';
import 'package:qrsystem/provider/token_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _testInputFormKey = GlobalKey();

  final userIDController = TextEditingController();
  final userPWController = TextEditingController();
  final userEmailController = TextEditingController();
  final accessTokenController = TextEditingController();
  final gateTokenController = TextEditingController();

  late SharedPreferences _prefs;
  late TokenProvider _tokenProvider;

  String userID = 'test';
  String userPW = 'test';
  String userEmail = 'test';
  String accessToken = 'test';
  String gateToken = 'test';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('테스트!!'),
        ),
        body: Column(
          children: [
            _testInputForm(),
            SizedBox(
              height: 30,
              width: 30,
            ),
            _testButton(),
            _getQRButton(),
            _testList(),
          ],
        ));
  }

  Widget _testInputForm() {
    return Form(
      key: _testInputFormKey,
      child: (Column(
        children: [
          TextFormField(
            controller: userIDController,
            decoration: InputDecoration(labelText: '유저 아이디'),
          ),
          TextFormField(
            controller: userPWController,
            decoration: InputDecoration(labelText: '유저 패스워드'),
          ),
          TextFormField(
            controller: userEmailController,
            decoration: InputDecoration(labelText: '유저 이메일'),
          ),
        ],
      )),
    );
  }

  Widget _testButton() {
    return ElevatedButton(
      onPressed: _changeInfo,
      child: Icon(Icons.add),
    );
  }

  Widget _getQRButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => QRPage()));
      },
      child: Icon(Icons.qr_code),
    );
  }

  void _changeInfo() {
    _getTokenInfo();
    setState(() {
      userID = userIDController.text.toString();
      userPW = userPWController.text.toString();
      userEmail = userEmailController.text.toString();
    });
  }

  void _getTokenInfo(){
    print('프로바이더 테스트!');
    print(_tokenProvider);
    _tokenProvider = Provider.of(context, listen: false);
    _tokenProvider.loadToken();
  }

  Widget _testList() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[Text('userID = '), Text(userID)],
        ),
        Row(
          children: <Widget>[Text('userPW = '), Text(userPW)],
        ),
        Row(
          children: <Widget>[Text('userEmail = '), Text(userEmail)],
        ),
        Row(
          children: <Widget>[Text('accessToken = '), Text(accessToken)],
        ),
        Row(
          children: <Widget>[Text('gateToken = '), Text(gateToken)],
        ),
        Row(
          children: <Widget>[Text('phoneNumber = '), Text('Test')],
        ),
        Row(
          children: <Widget>[Text('name = '), Text('Test')],
        ),
        Row(
          children: <Widget>[Text('state = '), Text('Test')],
        ),
        Row(
          children: <Widget>[Text('expireDate = '), Text('Test')],
        ),
        Row(
          children: <Widget>[Text('effectiveDate = '), Text('Test')],
        ),
        Row(
          children: <Widget>[Text('corporateName = '), Text('Test')],
        ),
        Row(
          children: <Widget>[Text('officeType = '), Text('Test')],
        ),
        Row(
          children: <Widget>[Text('representative = '), Text('Test')],
        ),
        Row(
          children: <Widget>[Text('businessType = '), Text('Test')],
        ),
        Row(
          children: <Widget>[Text('roomNumber = '), Text('Test')],
        ),
        Row(
          children: <Widget>[Text('deposit = '), Text('Test')],
        ),
        Row(
          children: <Widget>[Text('monthlyRent = '), Text('Test')],
        ),
      ],
    );
  }
}
