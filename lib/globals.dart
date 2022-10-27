import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

final nameController = TextEditingController();
final genderController = TextEditingController();
final pincodeController = TextEditingController();
final TextEditingController timeController = TextEditingController();
@override
void dispose() {
  // Clean up the controller when the widget is disposed.
  nameController.dispose();
  genderController.dispose();
  pincodeController.dispose();
  timeController.dispose();

dispose();
}

