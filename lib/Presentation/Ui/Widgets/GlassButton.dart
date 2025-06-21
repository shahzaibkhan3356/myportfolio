import 'dart:ui';

import 'package:flutter/material.dart';

class GlassButton extends StatefulWidget {
  final String emoji;
  final String label;
  final VoidCallback onTap;
  final List<Color> gradientColors;
  final double fontSize;
  final double emojiSize;
  final EdgeInsetsGeometry? padding;
  final String? Iconimage;
  const GlassButton({
    super.key,
    required this.emoji,
    required this.label,
    required this.onTap,
    required this.gradientColors,
    this.fontSize = 22,
    this.emojiSize = 28,
    this.Iconimage,
    this.padding,
  });

  @override
  State<GlassButton> createState() => _GlassButtonState();
}

class _GlassButtonState extends State<GlassButton> with SingleTickerProviderStateMixin {
  bool _hovering = false;
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;
    final bool isActive = isMobile ? _pressed : _hovering;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        onTapDown: isMobile ? (_) => setState(() => _pressed = true) : null,
        onTapUp: isMobile ? (_) => setState(() => _pressed = false) : null,
        onTapCancel: isMobile ? () => setState(() => _pressed = false) : null,
        child: AnimatedScale(
          scale: isActive ? 1.08 : 1.0,
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: widget.gradientColors.last.withOpacity(isActive ? 0.85 : 0.4),
                  blurRadius: isActive ? 36 : 24,
                  spreadRadius: isActive ? 4 : 1,
                  offset: const Offset(0, 8),
                ),
              ],
              border: Border.all(
                color: Colors.white.withOpacity(0.18),
                width: 1.2,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
                child: Padding(
                  padding: widget.padding ??
                      const EdgeInsets.symmetric(horizontal: 38, vertical: 22),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (widget.Iconimage != null)
                        CircleAvatar(backgroundImage: NetworkImage(widget.Iconimage!))
                      else
                        Text(widget.emoji, style: TextStyle(fontSize: widget.emojiSize)),
                      const SizedBox(width: 16),
                      Flexible(
                        child: Text(
                          widget.label,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: widget.fontSize,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.2,
                            overflow: TextOverflow.ellipsis,
                            shadows: const [
                              Shadow(
                                blurRadius: 12,
                                color: Colors.black38,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
