import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_hup/core/services/database_service.dart';

class FireStoreService implements DatabaseService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  }) async {
    if (documentId != null) {
      await firestore.collection(path).doc(documentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<dynamic> getData({
    required String path,
    String? documentId,
    Map<String, dynamic>? query,
  }) async {
    if (documentId != null) {
      final userData = await firestore.collection(path).doc(documentId).get();
      return userData.data();
    } else {
      Query<Map<String, dynamic>> data = firestore.collection(path);
      if (query != null) {
        if (query['orderBy'] != null) {
          final orderBy = query['orderBy'];
          final descending = query['descending'];
          data = data.orderBy(orderBy, descending: descending);
        }
        if (query['limit'] != null) {
          final limit = query['limit'];
          data = data.limit(limit);
        }
      }
      final result= await data.get();
      return result.docs.map((e) => e.data()).toList();
    }
  }

  @override
  Future<bool> checkIfDataExists({
    required String path,
    required String documentId,
  }) {
    return firestore
        .collection(path)
        .doc(documentId)
        .get()
        .then((value) => value.exists);
  }
}
