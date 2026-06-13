import 'package:flutter/cupertino.dart';

class RegistrarScreen extends StatelessWidget {
  const RegistrarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Registrar Alumno'),
      ),
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 28),
          children: [
            CupertinoFormSection.insetGrouped(
              header: const Text('Datos del estudiante'),
              children: [
                _buildTextField(
                  placeholder: 'Nombre del Alumno',
                  icon: CupertinoIcons.person,
                ),
                _buildTextField(
                  placeholder: 'Edad',
                  icon: CupertinoIcons.calendar,
                  keyboardType: TextInputType.number,
                ),
                _buildTextField(
                  placeholder: 'Ciudad de Origen',
                  icon: CupertinoIcons.map,
                ),
              ],
            ),
            const SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: SizedBox(
                height: 50,
                child: CupertinoButton.filled(
                  borderRadius: BorderRadius.circular(14),
                  padding: EdgeInsets.zero,
                  onPressed: () => _showSavedDialog(context),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(CupertinoIcons.check_mark_circled_solid, size: 20),
                      SizedBox(width: 8),
                      Text(
                        'Grabar Datos',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String placeholder,
    required IconData icon,
    TextInputType? keyboardType,
  }) {
    return CupertinoTextFormFieldRow(
      placeholder: placeholder,
      keyboardType: keyboardType,
      prefix: Icon(icon, color: CupertinoColors.secondaryLabel),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
    );
  }

  void _showSavedDialog(BuildContext context) {
    showCupertinoDialog<void>(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text('Datos grabados'),
        content: const Text('El registro se guardo exitosamente.'),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
