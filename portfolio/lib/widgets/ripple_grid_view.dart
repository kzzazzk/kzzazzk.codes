import 'package:flutter/cupertino.dart';
import 'package:portfolio/widgets/ripple_tile.dart';

class RippleGridView extends StatefulWidget {
  const RippleGridView({super.key});

  @override
  _RippleGridViewState createState() => _RippleGridViewState();
}

class _RippleGridViewState extends State<RippleGridView> {
  bool isTapped = true;
  bool animationDone = true;
  List<List<bool>> tileStates =
      List.generate(20, (i) => List.generate(20, (j) => false));

  void changeTileColors(int startRow, startCol) {
    if (animationDone) {
      _startRipple(startRow, startCol);
    }
  }

  _startRipple(int startRow, startCol) {
    for (int i = 0; i < tileStates.length; i++) {
      for (int j = 0; j < tileStates[i].length; j++) {
        if (tileStates[i][j] != isTapped) {
          tileStates[i][j] = isTapped;
        }
      }
    }
    _ripple(startRow, startCol);
    animationDone = false;
  }

  _ripple(int row, int col) {
    if (row >= 0 &&
        row < tileStates.length &&
        col >= 0 &&
        col < tileStates[0].length &&
        tileStates[row][col] == isTapped) {
      tileStates[row][col] = !isTapped;
      setState(() {});
      Future.delayed(const Duration(microseconds: 1), () {
        _ripple(row - 1, col);
        _ripple(row + 1, col);
        _ripple(row, col - 1);
        _ripple(row, col + 1);
      });
    } else {
      animationDone = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    const tileSize = 100.0;

    int cols = (screenWidth ~/ tileSize);
    int rows = (screenHeight ~/ tileSize);

    if (cols > 20) cols = 20;
    if (rows > 20) rows = 20;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: cols,
      ),
      itemCount: rows * cols,
      itemBuilder: (context, index) {
        final row = index ~/ cols;
        final col = index % cols;
        return GestureDetector(
          onTap: () {
            isTapped = !isTapped; // Toggle isTapped for each click
            changeTileColors(row, col);
          },
          child: Padding(
            padding: const EdgeInsets.all(0.8),
            child: RippleTile(
              isTapped: tileStates[row][col],
            ),
          ),
        );
      },
    );
  }
}
