import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:ticket/pages/new-password-page.dart';
import 'package:ticket/utils/contants/colors.dart';
import 'package:ticket/widgets/big-title-text.dart';
import 'package:ticket/widgets/black-button.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  String _code = "";

  @override
  void initState() {
    super.initState();
    listenForCode();
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    super.dispose();
  }

  listenForCode() async {
    await SmsAutoFill().listenForCode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Voltar',
            style: TextStyle(fontSize: 14),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const BigTitle(texto: 'VERIFICAÇÃO DO CÓDIGO'),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Insira o código que foi enviado para o seu email nos campos abaixo.',
                textAlign: TextAlign.center,
                style: TextStyle(color: TColors.grayColor),
              ),
              const SizedBox(
                height: 40,
              ),
              Form(
                child: Column(children: [
                  PinFieldAutoFill(
                    decoration: UnderlineDecoration(
                      textStyle:
                          const TextStyle(fontSize: 20, color: Colors.black),
                      colorBuilder:
                          FixedColorBuilder(Colors.black.withOpacity(0.3)),
                    ),
                    currentCode: _code,
                    onCodeSubmitted: (code) {},
                    onCodeChanged: (code) {
                      if (code!.length == 6) {
                        FocusScope.of(context).requestFocus(FocusNode());
                      }
                    },
                  ),
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 56,
                        width: 50,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin1) {},
                          decoration: const InputDecoration(
                              hintText: "0", border: OutlineInputBorder()),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 56,
                        width: 50,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin2) {},
                          decoration: const InputDecoration(
                              hintText: "0", border: OutlineInputBorder()),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 56,
                        width: 50,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin3) {},
                          decoration: const InputDecoration(
                              hintText: "0", border: OutlineInputBorder()),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 56,
                        width: 50,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin4) {},
                          decoration: const InputDecoration(
                              hintText: "0", border: OutlineInputBorder()),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 56,
                        width: 50,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin5) {},
                          decoration: const InputDecoration(
                              hintText: "0", border: OutlineInputBorder()),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 56,
                        width: 50,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin6) {},
                          decoration: const InputDecoration(
                              hintText: "0", border: OutlineInputBorder()),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),
                  */
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  _code == '' ?
                  BlackButtom(
                    onPressed: () async {
                      setState(() {
                        _code = '123456';
                      });
                    },
                    texto: 'Continuar',
                    hasIcon: false,
                  ):

                  BlackButtom(
                    onPressed: () => Get.to(NewPassWordScreen()),
                    texto: 'Confirmar',
                    hasIcon: false,
                  )
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Text('Não recebeu o código ?'),
                      Text(
                        ' Reenviar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}

/*import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({Key? key}) : super(key: key);

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  String _code="";
  String signature = "{{ app signature }}";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const PhoneFieldHint(),
              const Spacer(),
              PinFieldAutoFill(
                decoration: UnderlineDecoration(
                  textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                  colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
                ),
                currentCode: _code,
                onCodeSubmitted: (code) {},
                onCodeChanged: (code) {
                  if (code!.length == 6) {
                    FocusScope.of(context).requestFocus(FocusNode());
                  }
                },
              ),
              const Spacer(),
              TextFieldPinAutoFill(
                currentCode: _code,
              ),
              const Spacer(),
              ElevatedButton(
                child: const Text('Listen for sms code'),
                onPressed: () async {
                  await SmsAutoFill().listenForCode();
                },
              ),
              ElevatedButton(
                child: const Text('Set code to 123456'),
                onPressed: () async {
                  setState(() {
                    _code = '123456';
                  });
                },
              ),
              const SizedBox(height: 8.0),
              const Divider(height: 1.0),
              const SizedBox(height: 4.0),
              Text("App Signature : $signature"),
              const SizedBox(height: 4.0),
              ElevatedButton(
                child: const Text('Get app signature'),
                onPressed: () async {
                  signature = await SmsAutoFill().getAppSignature;
                  setState(() {});
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => CodeAutoFillTestPage()));
                },
                child: const Text("Test CodeAutoFill mixin"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CodeAutoFillTestPage extends StatefulWidget {
  const CodeAutoFillTestPage({Key? key}) : super(key: key);

  @override
  State<CodeAutoFillTestPage> createState() => _CodeAutoFillTestPageState();
}

class _CodeAutoFillTestPageState extends State<CodeAutoFillTestPage> with CodeAutoFill {
  String? appSignature;
  String? otpCode;

  @override
  void codeUpdated() {
    setState(() {
      otpCode = code!;
    });
  }

  @override
  void initState() {
    super.initState();
    listenForCode();

    SmsAutoFill().getAppSignature.then((signature) {
      setState(() {
        appSignature = signature;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    cancel();
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 18);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Listening for code"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
            child: Text(
              "This is the current app signature: $appSignature",
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Builder(
              builder: (_) {
                if (otpCode == null) {
                  return const Text("Listening for code...", style: textStyle);
                }
                return Text("Code Received: $otpCode", style: textStyle);
              },
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
*/