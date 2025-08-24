class Failure {
  final String message;
  Failure([this.message = 'Unknown error occurred']);

  @override
  String toString() {
    return 'Failure: $message';
  }
}
