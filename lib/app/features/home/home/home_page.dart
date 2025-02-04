part of 'imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int totalUnits = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Duolingo-like Pathway'),
      ),
      body: SingleChildScrollView(
        // Let the user scroll if the content is taller than the screen
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double screenWidth = constraints.maxWidth;
            // We’ll make the total height bigger than the screen for a vertical scroll
            final double totalHeight = 100.0 * totalUnits; // 100 px per unit
            // Horizontal positions: left or right
            final double leftX = screenWidth * 0.25;
            final double rightX = screenWidth * 0.75;
            // Space each node vertically
            final double verticalSpacing = totalHeight / (totalUnits + 1);
            // Node size
            const double nodeDiameter = 40.0;

            // Collect children for Stack
            final List<Widget> nodes = [];
            // Keep track of node centers for drawing the path
            final List<Offset> nodeCenters = [];

            for (int i = 0; i < totalUnits; i++) {
              // Alternate side: even index → left, odd index → right
              bool isLeft = i % 2 == 0;
              final double posX = isLeft ? leftX : rightX;
              final double posY = verticalSpacing * (i + 1);

              nodeCenters.add(Offset(posX, posY));

              // Add each node as a circular widget
              nodes.add(
                Positioned(
                  left: posX - nodeDiameter / 2,
                  top: posY - nodeDiameter / 2,
                  child: _buildNode(i),
                ),
              );
            }

            return SizedBox(
              width: screenWidth,
              height: totalHeight,
              child: Stack(
                children: [
                  // Draw the fancy curved path behind the nodes
                  CustomPaint(
                    size: Size(screenWidth, totalHeight),
                    painter: CurvedPathPainter(nodeCenters: nodeCenters),
                  ),
                  // Place the nodes on top
                  ...nodes,
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  /// Builds a single circular node with a label inside
  Widget _buildNode(int index) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.blue.shade400,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.3),
            blurRadius: 4,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        '${index + 1}',
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

/// A CustomPainter that draws smooth Bézier curves between consecutive nodes
class CurvedPathPainter extends CustomPainter {
  final List<Offset> nodeCenters;

  CurvedPathPainter({required this.nodeCenters});

  @override
  void paint(Canvas canvas, Size size) {
    if (nodeCenters.isEmpty) return;

    // We set up a Paint object for drawing a smooth, gradient stroke
    final Paint linePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
    // Create a vertical gradient (start at top, end at bottom)
      ..shader = ui.Gradient.linear(
        Offset(0, 0),
        Offset(0, size.height),
        [Colors.blueAccent, Colors.greenAccent],
      )
      ..isAntiAlias = true;

    // The Path that will connect all nodes with curves
    final path = Path();
    // Start at the first node
    path.moveTo(nodeCenters.first.dx, nodeCenters.first.dy);

    // For each subsequent node, draw a quadratic Bézier curve
    for (int i = 0; i < nodeCenters.length - 1; i++) {
      final current = nodeCenters[i];
      final next = nodeCenters[i + 1];

      // Control point (midpoint) to ensure a smooth S-curve
      final controlPoint = Offset(
        (current.dx + next.dx) / 2,
        (current.dy + next.dy) / 2,
      );

      path.quadraticBezierTo(
        controlPoint.dx,
        controlPoint.dy,
        next.dx,
        next.dy,
      );
    }

    // Draw the path
    canvas.drawPath(path, linePaint);
  }

  @override
  bool shouldRepaint(CurvedPathPainter oldDelegate) => false;
}
