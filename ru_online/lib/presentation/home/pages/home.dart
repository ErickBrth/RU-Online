
import 'package:flutter/material.dart';

import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ru_online/presentation/home/components/queue_button.dart';

import 'package:ru_online/presentation/shared/components/yellow_button.dart';

import '../components/MenuGridView/menu_grid_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25),
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
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
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Good Morning!',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
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
                child: FittedBox(
                  fit: BoxFit.contain,
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
              ),
              const SizedBox(height: 10),
              const QueueButton(),
              const SizedBox(height: 25),
              Text("Menu", style: Theme.of(context).textTheme.titleLarge,),
              const MenuGridView(),
              const SizedBox(height: 20),
              FittedBox(
                child: Text(
                  "You haven't placed your order today!",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 5),
              const FittedBox(
                child: Text(
                  "Order in advance and reduce your time in line",
                ),
              ),
              const SizedBox(height: 25),
              const Center(
                child: SizedBox(
                    width: 183,
                    child: YellowButton(defaultRoute: "/home", title: "Order now!", icon: Icon(Icons.arrow_forward_outlined,),)
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}