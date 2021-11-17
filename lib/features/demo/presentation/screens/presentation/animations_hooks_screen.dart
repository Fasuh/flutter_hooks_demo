import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hook_testinground/core/navigator/navigator.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimationsHooksScreen extends HookWidget with NavigatedScreen {
  const AnimationsHooksScreen({Key? key}) : super(key: key);

  @override
  String get routeName => 'animations_hooks_screen';

  @override
  Widget build(BuildContext context) {
    final tickerProvider = useSingleTickerProvider();
    final animationController = useAnimationController(
      vsync: tickerProvider,
      duration: const Duration(seconds: 1),
      reverseDuration: const Duration(seconds: 1),
    );

    useEffect(() {
      animationController.repeat(reverse: true);
    }, [animationController]);

    final animation = useAnimation(animationController.view);

    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns: animationController.view,
          child: FadeTransition(
            opacity: animationController.view,
            child: Container(
              width: 100 * animation,
              height: 100 * animation,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
