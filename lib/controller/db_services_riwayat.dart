import 'package:cloud_firestore/cloud_firestore.dart';

class DbServiceRiwayat {
  static CollectionReference riwayatPemesananCollection =
      FirebaseFirestore.instance.collection('riwayat_pemesanan');

  static Future<void> createOrUpdateRiwayatPemesanan({
    required String collectionId,
    required String nama,
    required int totalHarga,
    required String metodePengiriman,
    String? noMeja,
    required String metodePembayaran,
  }) async {
    await riwayatPemesananCollection.doc(collectionId).set(
      {
        'nama': nama,
        'total_harga': totalHarga,
        'metode_pengiriman': metodePengiriman,
        'no_meja': noMeja,
        'metode_pembayaran': metodePembayaran,
      },
      SetOptions(merge: true),
    );
  }
}
