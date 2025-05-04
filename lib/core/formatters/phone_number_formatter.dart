import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

final MaskTextInputFormatter phoneNumberFormatter = MaskTextInputFormatter(
  mask: '+7 (###) ###-##-##',
  filter: {"#": RegExp(r'[0-9]')},
  type: MaskAutoCompletionType.lazy,
);
