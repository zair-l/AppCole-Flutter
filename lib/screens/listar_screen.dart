import 'package:flutter/cupertino.dart';

class ListarScreen extends StatelessWidget {
  const ListarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final alumnos = [
      {'nombre': 'Hugo', 'edad': '38', 'ciudad': 'Nasca'},
      {'nombre': 'Juan', 'edad': '22', 'ciudad': 'Lima'},
      {'nombre': 'Maria', 'edad': '19', 'ciudad': 'Cusco'},
    ];

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Lista de Alumnos'),
      ),
      child: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 28),
          itemCount: alumnos.length,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder: (context, index) {
            final alumno = alumnos[index];

            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              decoration: BoxDecoration(
                color: CupertinoColors.secondarySystemGroupedBackground
                    .resolveFrom(context),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      color: CupertinoColors.systemOrange.withValues(
                        alpha: 0.16,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      CupertinoIcons.person_fill,
                      color: CupertinoColors.systemOrange,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          alumno['nombre']!,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: CupertinoColors.label,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          'Edad: ${alumno['edad']} anos  |  Origen: ${alumno['ciudad']}',
                          style: const TextStyle(
                            color: CupertinoColors.secondaryLabel,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    CupertinoIcons.chevron_forward,
                    size: 18,
                    color: CupertinoColors.tertiaryLabel,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
