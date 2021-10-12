import 'dart:math';
import 'dart:typed_data';

import 'package:walletconnect_dart/src/crypto/encrypted_payload.dart';

abstract class CipherBox {
  Future<EncryptedPayload> encrypt({
    required Uint8List data,
    required Uint8List key,
    Uint8List? iv,
  });

  Future<Uint8List> decrypt({
    required EncryptedPayload payload,
    required Uint8List key,
  });

  Future<bool> verifyHmac({
    required EncryptedPayload payload,
    required Uint8List key,
  });

  Future<Uint8List> generateKey({int length = 32, Random? random});
}
