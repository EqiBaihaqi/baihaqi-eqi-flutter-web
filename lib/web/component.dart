import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final String title;
  const TabsWeb({super.key, required this.title});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
      },
      child: AnimatedDefaultTextStyle(
          style: isSelected
              ? GoogleFonts.roboto(
                  shadows: [
                    const Shadow(
                      color: Colors.black,
                      offset: Offset(0, -1),
                    )
                  ],
                  fontSize: 25.0,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1,
                  decorationColor: Colors.black,
                )
              : GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 23.0,
                ),
          duration: const Duration(milliseconds: 100),
          child: Text(widget.title)),
    );
  }
}

class SansBold extends StatelessWidget {
  final String text;
  final double size;
  const SansBold({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final String text;
  final double size;
  const Sans({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: size,
      ),
    );
  }
}

class TextFormCustom extends StatelessWidget {
  final String heading;
  final int maxLine;
  final String hintText;
  final double width;
  const TextFormCustom(
      {super.key,
      required this.heading,
      required this.maxLine,
      required this.hintText,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: const TextStyle(fontSize: 16.0),
        ),
        const SizedBox(
          height: 5.0,
        ),
        SizedBox(
          width: width,
          child: TextFormField(
            maxLines: maxLine,
            decoration: InputDecoration(
                hintText: hintText,
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.teal,
                )),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.tealAccent,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                )),
          ),
        )
      ],
    );
  }
}

class AnimatedCardWeb extends StatefulWidget {
  final bool? reverse;
  final String imagePath;
  final BoxFit? fit;
  final String text;
  const AnimatedCardWeb(
      {super.key,
      this.reverse,
      required this.imagePath,
      this.fit,
      required this.text});

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween(
          begin: widget.reverse == true ? const Offset(0, 0.08) : Offset.zero,
          end: widget.reverse == true
              ? Offset.zero
              : const Offset(
                  0,
                  0.08,
                ))
      .animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                width: 200,
                height: 200,
                fit: widget.fit,
              ),
              const SizedBox(
                height: 10,
              ),
              SansBold(
                text: widget.text,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
