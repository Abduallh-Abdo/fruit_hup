class AppRegex {
  static bool isEmailValid(String email) {
    return RegExp(
      r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
    ).hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    return RegExp(
      r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$",
    ).hasMatch(password);
  }

  static bool isPhoneNumberValid(String phoneNumber) {
    return RegExp(r'^(010|011|012|015)[0-9]{8}$').hasMatch(phoneNumber);
  }

  static bool isNationalIdValid(String id) {
    // Step 1: Basic format check
    final regex = RegExp(r'^[23]\d{13}$');
    if (!regex.hasMatch(id)) return false;

    // Step 2: Extract century, date parts
    int century = int.parse(id[0]) == 2 ? 1900 : 2000;
    int year = int.parse(id.substring(1, 3));
    int month = int.parse(id.substring(3, 5));
    int day = int.parse(id.substring(5, 7));

    // Step 3: Check valid date
    try {
      DateTime date = DateTime(century + year, month, day);
      if (date.year != (century + year) ||
          date.month != month ||
          date.day != day) {
        return false;
      }
      if (date.isAfter(DateTime.now())) return false;
    } catch (_) {
      return false;
    }

    // Step 4: Check valid governorate code
    final validGovernorateCodes = {
      '01',
      '02',
      '03',
      '04',
      '11',
      '12',
      '13',
      '14',
      '15',
      '16',
      '17',
      '18',
      '19',
      '21',
      '22',
      '23',
      '24',
      '25',
      '26',
      '27',
      '28',
      '29',
      '31',
      '32',
      '33',
      '34',
      '35',
      '88',
    };
    String govCode = id.substring(7, 9);
    if (!validGovernorateCodes.contains(govCode)) return false;

    return true;
  }
}
