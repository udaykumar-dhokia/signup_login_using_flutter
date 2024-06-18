class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  bool _showPassword = true;
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: black,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    "lib/assets/back.jpg",
                  ),
                ),
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUp(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 8, top: 15),
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 15, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: white,
                ),
                child: Text(
                  "SignUp",
                  style: GoogleFonts.epilogue(
                    textStyle: TextStyle(
                      color: black,
                      decoration: TextDecoration.none,
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 9, left: 10),
            child: Container(
              child: Text(
                "Brilliance.",
                style: GoogleFonts.epilogue(
                  textStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.1,
                    decoration: TextDecoration.none,
                    color: white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 8.8, left: 12),
            child: Container(
              child: Text(
                "Brilliance.",
                style: GoogleFonts.epilogue(
                  textStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.1,
                    decoration: TextDecoration.none,
                    color: white.withOpacity(0.5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 6, left: 10),
            child: Container(
              child: Text(
                "Login",
                style: GoogleFonts.epilogue(
                  textStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                    decoration: TextDecoration.none,
                    color: white.withOpacity(0.8),
                  ),
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.5, // Initial size of the sheet
            minChildSize: 0.5, // Minimum size to which the sheet can be dragged
            maxChildSize: 0.8, // Maximum size to which the sheet can be dragged
            builder: (BuildContext context, ScrollController scrollController) {
              return Scaffold(
                backgroundColor: transparent,
                resizeToAvoidBottomInset: true,
                body: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: white,
                  ),
                  child: ListView(
                    controller: scrollController,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            _textField('Email', TextInputType.emailAddress,
                                _showPassword, () {}, _email),
                            const SizedBox(
                              height: 10,
                            ),
                            _textField(
                                'Password', TextInputType.text, _showPassword,
                                () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            }, _password),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding:
                                    const EdgeInsets.only(top: 18, bottom: 18),
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  "Login",
                                  style: GoogleFonts.epilogue(
                                    textStyle: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                height: 2,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    shape: BoxShape.circle,
                                    color: black.withOpacity(0.1),
                                  ),
                                  child: const FaIcon(FontAwesomeIcons.google),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    shape: BoxShape.circle,
                                    color: black.withOpacity(0.1),
                                  ),
                                  child: const FaIcon(
                                    FontAwesomeIcons.apple,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    shape: BoxShape.circle,
                                    color: black.withOpacity(0.1),
                                  ),
                                  child: const FaIcon(
                                    FontAwesomeIcons.googlePlay,
                                    size: 23,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    shape: BoxShape.circle,
                                    color: black.withOpacity(0.1),
                                  ),
                                  child: const FaIcon(
                                    FontAwesomeIcons.github,
                                    size: 23,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              "Powering the next generation of tech.",
                              style: GoogleFonts.epilogue(
                                textStyle: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  TextFormField _textField(String label, TextInputType type, bool showPassword,
          VoidCallback toggleVisibility, TextEditingController controller) =>
      TextFormField(
        controller: controller,
        keyboardType: type,
        cursorColor: black,
        obscureText: label == "Password" ? showPassword : false,
        decoration: InputDecoration(
          suffixIcon: label == "Password"
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      toggleVisibility();
                    });
                  },
                  icon: showPassword
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                )
              : null,
          filled: true,
          fillColor: black.withOpacity(0.1),
          label: Text(label),
          labelStyle: GoogleFonts.epilogue(
            textStyle: const TextStyle(
              color: black,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: black,
            ),
          ),
        ),
      );
}
