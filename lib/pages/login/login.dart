import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../home/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          CustomPaint(
            // color: Colors.white,
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              _logoImage,
              Stack(
                children: <Widget>[
                  _inputForm(size),
                  _authButton(size),
                  Container(
                    width: 100,
                    height: 50,
                    // color: Colors.black,
                  ),
                ],
              ),
              Container(
                height: size.height * 0.1,
              ),
              Container(
                height: size.height * 0.05,
                color: Colors.white,
                child: Text('계정이 없으신가요? 회원가입해주세요!'),
              )
            ],
          )
        ],
      ),
    );
  }

  // 상단 이미지지
  Widget get _logoImage {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
        child: FittedBox(
          fit: BoxFit.contain,
          child: CircleAvatar(
            // backgroundImage: (Image()),
          ),
        ),
      ),
    );
  }

  // 이메일, 비밀번호 입력 창
  Widget _inputForm(Size size) {
    return Padding(
      padding: EdgeInsets.all(size.width * 0.05),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 6,
        child: Padding(
          padding:
          EdgeInsets.only(left: 12.0, right: 12.0, top: 12, bottom: 32),
          child: Form(
            key: _formKey,
            child: (Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      icon: Icon(Icons.account_circle), labelText: '이메일'),
                  validator: (inputEmail) {
                    if (inputEmail == null || inputEmail.isEmpty) {
                      return '이메일이 비어있습니다!';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock), labelText: '비밀번호'),
                  validator: (inputPassword) {
                    if (inputPassword == null || inputPassword.isEmpty) {
                      return '비밀번호가 비어있습니다!';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text("비밀번호 찾기"),
              ],
            )),
          ),
        ),
      ),
    );
  }

  // 로그인 버튼
  Widget _authButton(Size size) {
    return Positioned(
      left: size.width * 0.15,
      right: size.width * 0.15,
      bottom: 0,
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            // TODO null safety 다시 한번 파악하기
            if (_formKey.currentState!.validate()) {
              _saveLogin();
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => Home()),);
            }
          },
          child: Text(
            '로그인',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
        ),
      ),
    );
  }

  void _saveLogin() async {
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('EMAIL', _emailController.text);
      prefs.setString('PASSWORD', _passwordController.text);
    }  }
}
