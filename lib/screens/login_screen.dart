import 'package:flutter/cupertino.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffeaf4ff), Color(0xfff7f7fb)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 420),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 32,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.systemBackground.resolveFrom(context),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: CupertinoColors.black.withValues(alpha: 0.08),
                      blurRadius: 28,
                      offset: const Offset(0, 14),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 92,
                      height: 92,
                      decoration: BoxDecoration(
                        color: CupertinoColors.activeBlue.withValues(
                          alpha: 0.12,
                        ),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: const Icon(
                        CupertinoIcons.book_fill,
                        size: 52,
                        color: CupertinoColors.activeBlue,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Bienvenido',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: CupertinoColors.label,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Ingresa tus credenciales para continuar',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: CupertinoColors.secondaryLabel),
                    ),
                    const SizedBox(height: 32),
                    CupertinoTextField(
                      placeholder: 'Usuario',
                      prefix: const Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Icon(
                          CupertinoIcons.person,
                          color: CupertinoColors.secondaryLabel,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 14,
                      ),
                      decoration: _fieldDecoration(context),
                    ),
                    const SizedBox(height: 16),
                    CupertinoTextField(
                      obscureText: true,
                      placeholder: 'Contrasena',
                      prefix: const Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Icon(
                          CupertinoIcons.lock,
                          color: CupertinoColors.secondaryLabel,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 14,
                      ),
                      decoration: _fieldDecoration(context),
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: CupertinoButton.filled(
                        borderRadius: BorderRadius.circular(14),
                        padding: EdgeInsets.zero,
                        onPressed: () =>
                            Navigator.pushReplacementNamed(context, '/menu'),
                        child: const Text(
                          'Iniciar Sesion',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _fieldDecoration(BuildContext context) {
    return BoxDecoration(
      color: CupertinoColors.secondarySystemGroupedBackground.resolveFrom(
        context,
      ),
      borderRadius: BorderRadius.circular(14),
      border: Border.all(color: CupertinoColors.separator.resolveFrom(context)),
    );
  }
}
