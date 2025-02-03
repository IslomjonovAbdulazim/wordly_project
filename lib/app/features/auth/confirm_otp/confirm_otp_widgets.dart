part of "imports.dart";

class __GoBack extends StatelessWidget {
  const __GoBack();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Image.asset(
        IconConstants.back,
        height: 20,
        color: context.textPrimary,
      ),
    );
  }
}

class __Texts extends StatelessWidget {
  const __Texts();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Verify Your Email",
          style: context.display,
        ),
        Text(
          "We’ve sent a verification code to {islomjonov.abdulazim.27@gmail.com}. Please enter the code below to continue and reset your password.",
          style: context.body,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class __Button extends StatelessWidget {
  const __Button();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: context.elevatedButtonStyle,
      onPressed: () {

      },
      child: Center(
        child: Text(
          "Continue",
          style: context.elevatedButton,
        ),
      ),
    );
  }
}

class __OTPField extends StatelessWidget {
  final Function(String) onCompleted;

  const __OTPField({required this.onCompleted});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 5,
      animationType: AnimationType.scale,
      animationDuration: const Duration(milliseconds: 300),
      textStyle: context.body,
      // cursorColor: _Colors.black,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(12),
        fieldHeight: 65,
        fieldWidth: 50,
        fieldOuterPadding: EdgeInsets.zero,
        // activeFillColor: _Colors.lighterBlue,
        // inactiveFillColor: _Colors.lighterBlue,
        // selectedFillColor: _Colors.lighterBlue,
        // activeColor: _Colors.blue,
        // inactiveColor: _Colors.borderGrey,
        // selectedColor: _Colors.black,
      ),
      enableActiveFill: true,
      keyboardType: TextInputType.number,
      onChanged: (value) {
        print("Current value: $value");
      },
      onCompleted: onCompleted,
    );
  }
}

class __StepTracker extends StatelessWidget {
  const __StepTracker();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: context.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: context.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: context.dividerColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
