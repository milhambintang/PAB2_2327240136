// Import package firebase_database untuk mengakses Firebase Realtime Database
import "package:firebase_database/firebase_database.dart";

// Class GoldService berisi method-method untuk mengakses data di Firebase
class GoldService {
  final DatabaseReference _database = FirebaseDatabase.instance.ref(
    'harga_emas',
  );

  // Method untuk mengambil data harga emas secara realtime
  // Mengembalikan Stream yang akan otomatis update saat data berubah
  Stream<DatabaseEvent> getPriceList() {
    return _database.onValue;
  }
}