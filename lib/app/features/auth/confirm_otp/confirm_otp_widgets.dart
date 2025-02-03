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
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: "We’ve sent a verification code to\n",
                style: context.body,
              ),
              TextSpan(
                text: "islomjonov.abdulazim.27@gmail.com",
                style: context.code,
              ),
              TextSpan(
                text:
                    "\nPlease enter the code below to continue and reset your password.",
                style: context.body,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class __Button extends StatelessWidget {
  const __Button();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ConfirmOtpController>();
    return ElevatedButton(
      style: context.elevatedButtonStyle,
      onPressed: controller.next,
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
    final controller = Get.find<ConfirmOtpController>();
    return PinCodeTextField(
      appContext: context,
      controller: controller.pinController,
      focusNode: controller.pinFocus.value,
      length: 5,
      animationType: AnimationType.scale,
      animationDuration: const Duration(milliseconds: 300),
      textStyle: context.title,
      cursorColor: context.textPrimary,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(12),
        fieldHeight: 65,
        fieldWidth: 50,
        fieldOuterPadding: EdgeInsets.zero,
        activeFillColor: context.primary,
        inactiveFillColor: context.onSurface,
        selectedFillColor: context.primary,
        activeColor: context.primary,
        inactiveColor: context.primary,
        selectedColor: context.textPrimary,
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
