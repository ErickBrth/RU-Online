
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
                            'Bom dia!',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                        const SizedBox(height: 5,),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: RichText(
                            text: TextSpan(
                              text: 'No momento, a menor fila é a ',
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'FILA 01 ',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                TextSpan(
                                  text: '(perto do laguinho)',
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
                  'O tempo de espera é de:',
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
              Text("O que tem pra hoje?", style: Theme.of(context).textTheme.titleLarge,),
              const MenuGridView(),
              const SizedBox(height: 20),
              FittedBox(
                child: Text(
                  "Você ainda não fez seu pedido hoje!",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 5),
              const FittedBox(
                child: Text(
                  "Peça com antecedência e diminua seu tempo na fila ",
                ),
              ),
              const SizedBox(height: 25),
              const Center(
                child: SizedBox(
                    width: 183,
                    child: YellowButton(defaultRoute: "/home", title: "Peça Agora!", icon: Icon(Icons.arrow_forward_outlined,),)
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