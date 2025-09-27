import 'package:fruit_hup/core/repos/products_repo/products_repo.dart';
import 'package:fruit_hup/core/repos/products_repo/products_repo_impl.dart';
import 'package:fruit_hup/core/services/database_service.dart';
import 'package:fruit_hup/core/services/firebase_auth_service.dart';
import 'package:fruit_hup/core/services/firestore_service.dart';
import 'package:fruit_hup/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:fruit_hup/features/auth/domain/repositories/auth_repo.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupGetIt() {
  sl.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  sl.registerSingleton<DatabaseService>(FireStoreService());
  sl.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      firebaseAuthService: sl<FirebaseAuthService>(),
      databaseService: sl<DatabaseService>(),
    ),
  );
  sl.registerSingleton<ProductsRepo>(
    ProductsRepoImpl(databaseService: sl<DatabaseService>()),
  );
}
