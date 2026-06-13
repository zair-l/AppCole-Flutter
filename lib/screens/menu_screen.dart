import 'package:flutter/cupertino.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        middle: Text('Panel de Control'),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    _buildMenuCard(
                      context,
                      'Perfil',
                      CupertinoIcons.person_crop_circle,
                      CupertinoColors.activeBlue,
                      '/perfil',
                    ),
                    _buildMenuCard(
                      context,
                      'Registrar Alumno',
                      CupertinoIcons.person_add,
                      CupertinoColors.activeGreen,
                      '/registrar',
                    ),
                    _buildMenuCard(
                      context,
                      'Listar Alumnos',
                      CupertinoIcons.list_bullet,
                      CupertinoColors.systemOrange,
                      '/listar',
                    ),
                    _buildMenuCard(
                      context,
                      'Preguntas Frecuentes',
                      CupertinoIcons.question_circle,
                      CupertinoColors.systemPurple,
                      '/faq',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () => Navigator.pushReplacementNamed(context, '/'),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.secondarySystemGroupedBackground
                        .resolveFrom(context),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        CupertinoIcons.square_arrow_left,
                        color: CupertinoColors.destructiveRed,
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Cerrar Sesion',
                        style: TextStyle(
                          color: CupertinoColors.destructiveRed,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        CupertinoIcons.chevron_forward,
                        size: 18,
                        color: CupertinoColors.tertiaryLabel,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuCard(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
    String route,
  ) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () => Navigator.pushNamed(context, route),
      child: Container(
        decoration: BoxDecoration(
          color: CupertinoColors.secondarySystemGroupedBackground.resolveFrom(
            context,
          ),
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: CupertinoColors.black.withValues(alpha: 0.05),
              blurRadius: 18,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 58,
              height: 58,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.14),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Icon(icon, size: 34, color: color),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: CupertinoColors.label,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
