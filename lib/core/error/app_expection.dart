abstract class AppExpection implements Exception {
  final String message;
 const AppExpection(this.message);
}



class RemateExpextion extends AppExpection{
  const RemateExpextion(super.message);
}


class LocalExpxtion extends AppExpection{
  const LocalExpxtion(super.message);
}





