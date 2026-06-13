import 'package:flutter/cupertino.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  int? _openIndex;

  final _faqs = const [
    (
      pregunta: 'Como se registran los alumnos sin base de datos?',
      respuesta:
          'Por el momento los datos se manejan de manera local en los componentes visuales del framework utilizando estados simulados en memoria.',
    ),
    (
      pregunta: 'Como regreso al Login de forma segura?',
      respuesta:
          'Usamos Navigator.pushReplacementNamed para limpiar el historial de navegacion y evitar volver sin iniciar sesion.',
    ),
    (
      pregunta: 'Que version de diseno se esta usando?',
      respuesta:
          'Se esta implementando un estilo Cupertino con navegacion, formularios, botones y alertas inspiradas en iOS.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Preguntas Frecuentes'),
      ),
      child: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 28),
          itemCount: _faqs.length,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder: (context, index) {
            final faq = _faqs[index];
            final isOpen = _openIndex == index;

            return _FaqTile(
              pregunta: faq.pregunta,
              respuesta: faq.respuesta,
              isOpen: isOpen,
              onTap: () {
                setState(() {
                  _openIndex = isOpen ? null : index;
                });
              },
            );
          },
        ),
      ),
    );
  }
}

class _FaqTile extends StatelessWidget {
  const _FaqTile({
    required this.pregunta,
    required this.respuesta,
    required this.isOpen,
    required this.onTap,
  });

  final String pregunta;
  final String respuesta;
  final bool isOpen;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CupertinoColors.secondarySystemGroupedBackground.resolveFrom(
          context,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          CupertinoButton(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
            onPressed: onTap,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    pregunta,
                    style: const TextStyle(
                      color: CupertinoColors.label,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Icon(
                  isOpen
                      ? CupertinoIcons.chevron_up
                      : CupertinoIcons.chevron_down,
                  size: 18,
                  color: CupertinoColors.secondaryLabel,
                ),
              ],
            ),
          ),
          if (isOpen)
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 0, 14, 16),
              child: Text(
                respuesta,
                style: const TextStyle(
                  color: CupertinoColors.secondaryLabel,
                  height: 1.35,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
