import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ru_online/presentation/home/components/app_bar.dart';
import 'package:ru_online/presentation/home/components/queue_button.dart';

import 'components/MenuGridView/menu_grid_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100), child: App_Bar()),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Good Morning!',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const SizedBox(height: 5,),
                      FittedBox(
                        fit: BoxFit.contain,
                        child: RichText(
                          text: TextSpan(
                            text: 'At this time, The smallest queue is ',
                            style: Theme.of(context).textTheme.bodyMedium,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'QUEUE 01 ',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              TextSpan(
                                text: '(near the lake)',
                                style: TextStyle(
                                  color: fromCssColor("#EA6721"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'The time of waiting is:',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: RichText(
                text:  TextSpan(
                  style: GoogleFonts.outfit(
                    fontSize: 48,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  children: const [
                    TextSpan(text: '00:45'),
                    TextSpan(
                      text: ':07',
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const QueueButton(),
            Text("Menu", style: Theme.of(context).textTheme.titleLarge,),
            MenuGridView()
          ],
        ),
      ),
    );
  }
}
