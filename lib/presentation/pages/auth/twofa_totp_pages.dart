

class TwoFATotpPage extends StatefulWidget {
  final String mode;
  const TwoFATotpPage({super.key, this.mode = 'login'});
  @override
  State<TwoFATotpPage> createState() => _TwoFATotpPageState();
}

class _TwoFATotpPageState extends State<TwoFATotpPage> {
  String _step = 'loading'; // loading, scan, code
  String _code = '';
  bool _hasError = false;
  bool _copied = false;
  int _ttl = 30;
  Timer? _ticker;

  