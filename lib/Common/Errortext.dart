import 'package:flutter/material.dart';
import 'package:personal_website/Common/Colors&Size.dart';

RegExp usernameRegex = RegExp(r'^[0-1a-z._]+$');
RegExp specialCharacterPattern = RegExp(r'[!@#\$%^&*()_+{}\[\]:;<>,.?~\\|]');
const someError = 'Some error occured';
const passworError = 'Password is incorrect';
const userError = 'Username is incorrect';
const noData = 'No Data found';

const circularprogress = CircularProgressIndicator(
  strokeWidth: 2,
  color: kTollens,
);
