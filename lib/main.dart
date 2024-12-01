import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MiFlorApp());
}

class MiFlorApp extends StatelessWidget {
  const MiFlorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlorPantalla(),
    );
  }
}

class FlorPantalla extends StatefulWidget {
  const FlorPantalla({super.key});

  @override
  _FlorPantallaState createState() => _FlorPantallaState();
}

class _FlorPantallaState extends State<FlorPantalla> {
  // Lista de frases
  final List<String> frases = [
    "Eres increíble",
    "La vida es bella",
    "Sigue adelante",
    "Hoy es un buen día",
    "Confía en ti",
    "La felicidad está en las pequeñas cosas",
    "Eres increíble",
    "Eres especial",
    "Brillas siempre",
    "Tú puedes todo",
    "Eres única",
    "Confía en ti",
    "Siempre adelante",
    "Eres suficiente",
    "Sonríe, brillas",
    "Tú haces magia",
    "Nada te detiene",
    "Eres valiente",
    "Sueña en grande",
    "Eres imparable",
    "Tu luz inspira",
    "Ama sin miedo",
    "Confía en la vida",
    "Eres fuerte",
    "Siempre positiva",
    "Cree en ti",
    "Tu esencia brilla",
    "Eres un regalo",
    "Todo es posible",
    "Sigue soñando",
    "Tu fuerza asombra",
    "Eres inspiración",
    "Sigue creciendo",
    "Eres un milagro",
    "Disfruta el viaje",
    "Tienes un don",
    "Tu risa alegra",
    "Eres auténtica",
    "Persiste siempre",
    "Vales muchísimo",
    "Tú haces la diferencia",
    "Mi amor",
    "Brilla sin miedo",
    "Eres un tesoro",
    "Sigue explorando",
    "Eres sorprendente",
    "Sé tú misma",
    "Me gustas",
    "Nunca te rindas",
    "Cree en la magia",
    "Eres increíblemente única",
    "Eres paz",
    "Eres alegría pura",
    "Enojona?",
    "Eres arte",
    "Hazlo con amor",
    "Eres hermosa",
    "Confía en el proceso",
    "Tu sonrisa es asombrosa",
    "Sigue aprendiendo de mi",
    "Eres bonita",
    "Tu bondad brilla",
    "Siempre chavos",
    "Tu mente es poderosa",
    "Tu corazón es oro",
    "Aeternum",
    "METANOIA",
    "Sigue iluminando",
    "EMUNÁ",
    "Tu esencia encanta",
    "Eres una soñadora",
    "Tu potencial es infinito",
    "Ama lo que haces",
    "Tienes un gran propósito",
    "Eres irremplazable",
    "Tu energía motiva",
    "Eres brillante",
    "Eres luz en la oscuridad",
    "Nunca dejes de creer",
    "Eres un regalo para el mundo",
    "Vive con intensidad",
    "Tu bondad transforma",
    "Eres pura esperanza",
    "Haz tu mejor esfuerzo",
    "RAMÉ",
    "Nunca te detengas",
    "MAKTUB",
    "Tu amor es infinito",
    "XODÓ",
    "PAIHUEN",
    "NEPAKARTOJAMA",
    "Eres chispa de vida",
    "Hazlo a tu manera",
    "Eres una creadora",
    "Eres simplemente maravillosa",
    "Eres pura pasión",
    "Todo estará bien",
    "Eres inolvidable",
    "Eres la calma",
    "MAEMUKI",
    "SZIVEM",
    "ERES MI TIAM",
    "Eres todo lo que necesitas ser",
    // Agrega aquí más frases hasta llegar a 100
  ];

  String fraseActual = "Toca el tulipán por favor";
  

  void mostrarFraseAleatoria() {
    final random = Random();
    setState(() {
      fraseActual = frases[random.nextInt(frases.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/tulipan.gif'), // Imagen del tulipán
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: GestureDetector(
            onTap: mostrarFraseAleatoria,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 400),
                Image.asset(
                  'assets/huella.png', // Ruta de la imagen del tulipán
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 20),
                Text(
                  fraseActual,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
