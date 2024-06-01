import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:ru_online/presentation/home/components/app_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100), child: const App_Bar()),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bom dia!',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    RichText(
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
                        )
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'O tempo de espera é de:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                '00:45:07',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {},
                  child: Text('Ver filas ->'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
