

class TwoFANotifPage extends StatefulWidget {
  final String mode;
  const TwoFANotifPage({super.key, this.mode = 'login'});
  @override
  State<TwoFANotifPage> createState() => _TwoFANotifPageState();
}

class _TwoFANotifPageState extends State<TwoFANotifPage> {
  String _phase = 'waiting'; // waiting, approved

  @override
  void initState() {
    super.initState();
    context.read<OtpBloc>().add(OtpSendFirebase());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OtpBloc, OtpState>(
      listener: (context, state) {
        if (state is OtpVerified) {
          setState(() => _phase = 'approved');
          Future.delayed(const Duration(milliseconds: 900), () {
            if (mounted) context.go('/home');
          });
        } else if (state is OtpError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message), backgroundColor: AppColors.red),
          );
        }
      },