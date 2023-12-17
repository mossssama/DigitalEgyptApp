import 'package:digital_egypt/core/api/registration_web_services.dart';

import '../models/tawkeel.dart';

class ProcurationRepository{
  final RegistrationWebServices registrationWebServices;

  ProcurationRepository(this.registrationWebServices);

  Future<Tawkeel> getProcuration() async {
    final procuration = await registrationWebServices.getProcuration();
    return procuration;
  }
}