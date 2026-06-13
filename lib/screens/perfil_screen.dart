import 'package:flutter/cupertino.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text('Mi Perfil')),
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 28),
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 28),
              decoration: BoxDecoration(
                color: CupertinoColors.secondarySystemGroupedBackground
                    .resolveFrom(context),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                children: [
                  Container(
                    width: 104,
                    height: 104,
                    decoration: BoxDecoration(
                      color: CupertinoColors.activeBlue.withValues(alpha: 0.12),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      CupertinoIcons.person_crop_circle_fill,
                      size: 76,
                      color: CupertinoColors.activeBlue,
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    'Hugo',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: CupertinoColors.label,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Administrador',
                    style: TextStyle(color: CupertinoColors.secondaryLabel),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            CupertinoFormSection.insetGrouped(
              header: const Text('Informacion'),
              children: const [
                _ProfileRow(
                  icon: CupertinoIcons.person,
                  title: 'Nombre',
                  value: 'Hugo',
                ),
                _ProfileRow(
                  icon: CupertinoIcons.gift,
                  title: 'Edad',
                  value: '38 anos',
                ),
                _ProfileRow(
                  icon: CupertinoIcons.location,
                  title: 'Sede / Ubicacion',
                  value: 'Nasca',
                ),
                _ProfileRow(
                  icon: CupertinoIcons.shield,
                  title: 'Rol',
                  value: 'Admin',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileRow extends StatelessWidget {
  const _ProfileRow({
    required this.icon,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Icon(icon, color: CupertinoColors.activeBlue),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: CupertinoColors.label,
              ),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: CupertinoColors.secondaryLabel,
            ),
          ),
        ],
      ),
    );
  }
}
