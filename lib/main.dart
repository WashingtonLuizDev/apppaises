import 'package:flutter/material.dart';
import 'dart:math';

const listaPaises = [
  {"nome":"Afeganistão", "bandeira":"af"},
  {"nome":"África do Sul", "bandeira":"za"},
  {"nome":"Albânia", "bandeira":"al"},
  {"nome":"Alemanha", "bandeira":"de"},
  {"nome":"Andorra", "bandeira":"ad"},
  {"nome":"Angola", "bandeira":"ao"},
  {"nome":"Anguilla", "bandeira":"ai"},
  {"nome":"Antártida", "bandeira":"aq"},
  {"nome":"Antígua e Barbuda", "bandeira":"ag"},
  {"nome":"Arábia Saudita", "bandeira":"sa"},
  {"nome":"Argélia", "bandeira":"dz"},
  {"nome":"Argentina", "bandeira":"ar"},
  {"nome":"Armênia", "bandeira":"am"},
  {"nome":"Aruba", "bandeira":"aw"},
  {"nome":"Austrália", "bandeira":"au"},
  {"nome":"Áustria", "bandeira":"at"},
  {"nome":"Azerbaijão", "bandeira":"az"},
  {"nome":"Bahamas", "bandeira":"bs"},
  {"nome":"Bahrein", "bandeira":"bh"},
  {"nome":"Bangladesh", "bandeira":"bd"},
  {"nome":"Barbados", "bandeira":"bb"},
  {"nome":"Belarus", "bandeira":"by"},
  {"nome":"Bélgica", "bandeira":"be"},
  {"nome":"Belize", "bandeira":"bz"},
  {"nome":"Benin", "bandeira":"bj"},
  {"nome":"Bermudas", "bandeira":"bm"},
  {"nome":"Bolívia", "bandeira":"bo"},
  {"nome":"Bósnia-Herzegóvina", "bandeira":"ba"},
  {"nome":"Botsuana", "bandeira":"bw"},
  {"nome":"Brasil", "bandeira":"br"},
  {"nome":"Brunei", "bandeira":"bn"},
  {"nome":"Bulgária", "bandeira":"bg"},
  {"nome":"Burkina Fasso", "bandeira":"bf"},
  {"nome":"Burundi", "bandeira":"bi"},
  {"nome":"Butão", "bandeira":"bt"},
  {"nome":"Cabo Verde", "bandeira":"cv"},
  {"nome":"Camarões", "bandeira":"cm"},
  {"nome":"Camboja", "bandeira":"kh"},
  {"nome":"Canadá", "bandeira":"ca"},
  {"nome":"Canárias", "bandeira":"ic"},
  {"nome":"Cazaquistão", "bandeira":"kz"},
  {"nome":"Ceuta e Melilla", "bandeira":"ea"},
  {"nome":"Chade", "bandeira":"td"},
  {"nome":"Chile", "bandeira":"cl"},
  {"nome":"China", "bandeira":"cn"},
  {"nome":"Chipre", "bandeira":"cy"},
  {"nome":"Cingapura", "bandeira":"sg"},
  {"nome":"Colômbia", "bandeira":"co"},
  {"nome":"Comores", "bandeira":"km"},
  {"nome":"Congo", "bandeira":"cg"},
  {"nome":"Coréia do Norte", "bandeira":"kp"},
  {"nome":"Coréia do Sul", "bandeira":"kr"},
  {"nome":"Costa do Marfim", "bandeira":"ci"},
  {"nome":"Costa Rica", "bandeira":"cr"},
  {"nome":"Croácia", "bandeira":"hr"},
  {"nome":"Cuba", "bandeira":"cu"},
  {"nome":"Curaçao", "bandeira":"cw"},
  {"nome":"Diego Garcia", "bandeira":"dg"},
  {"nome":"Dinamarca", "bandeira":"dk"},
  {"nome":"Djibuti", "bandeira":"dj"},
  {"nome":"Dominica", "bandeira":"dm"},
  {"nome":"Egito", "bandeira":"eg"},
  {"nome":"El Salvador", "bandeira":"sv"},
  {"nome":"Emirados Árabes Unidos", "bandeira":"ae"},
  {"nome":"Equador", "bandeira":"ec"},
  {"nome":"Eritréia", "bandeira":"er"},
  {"nome":"Eslováquia", "bandeira":"sk"},
  {"nome":"Eslovênia", "bandeira":"si"},
  {"nome":"Espanha", "bandeira":"es"},
  {"nome":"Estados Unidos", "bandeira":"us"},
  {"nome":"Estônia", "bandeira":"ee"},
  {"nome":"Etiópia", "bandeira":"et"},
  {"nome":"Fiji", "bandeira":"fj"},
  {"nome":"Filipinas", "bandeira":"ph"},
  {"nome":"Finlândia", "bandeira":"fi"},
  {"nome":"França", "bandeira":"fr"},
  {"nome":"Gabão", "bandeira":"ga"},
  {"nome":"Gâmbia", "bandeira":"gm"},
  {"nome":"Gana", "bandeira":"gh"},
  {"nome":"Geórgia", "bandeira":"ge"},
  {"nome":"Gibraltar", "bandeira":"gi"},
  {"nome":"Grã-Bretanha (Reino Unido, UK)", "bandeira":"gb"},
  {"nome":"Granada", "bandeira":"gd"},
  {"nome":"Grécia", "bandeira":"gr"},
  {"nome":"Groelândia", "bandeira":"gl"},
  {"nome":"Guadalupe", "bandeira":"gp"},
  {"nome":"Guam (Território dos Estados Unidos)", "bandeira":"gu"},
  {"nome":"Guatemala", "bandeira":"gt"},
  {"nome":"Guernsey", "bandeira":"gg"},
  {"nome":"Guiana", "bandeira":"gy"},
  {"nome":"Guiana Francesa", "bandeira":"gf"},
  {"nome":"Guiné", "bandeira":"gn"},
  {"nome":"Guiné Equatorial", "bandeira":"gq"},
  {"nome":"Guiné-Bissau", "bandeira":"gw"},
  {"nome":"Haiti", "bandeira":"ht"},
  {"nome":"Holanda", "bandeira":"nl"},
  {"nome":"Honduras", "bandeira":"hn"},
  {"nome":"Hong Kong", "bandeira":"hk"},
  {"nome":"Hungria", "bandeira":"hu"},
  {"nome":"Iêmen", "bandeira":"ye"},
  {"nome":"Ilha Bouvet", "bandeira":"bv"},
  {"nome":"Ilha de Ascensão", "bandeira":"ac"},
  {"nome":"Ilha de Clipperton", "bandeira":"cp"},
  {"nome":"Ilha de Man", "bandeira":"im"},
  {"nome":"Ilha Natal", "bandeira":"cx"},
  {"nome":"Ilha Pitcairn", "bandeira":"pn"},
  {"nome":"Ilha Reunião", "bandeira":"re"},
  {"nome":"Ilhas Aland", "bandeira":"ax"},
  {"nome":"Ilhas Cayman", "bandeira":"ky"},
  {"nome":"Ilhas Cocos", "bandeira":"cc"},
  {"nome":"Ilhas Cook", "bandeira":"ck"},
  {"nome":"Ilhas Faroes", "bandeira":"fo"},
  {"nome":"Ilhas Geórgia do Sul e Sandwich do Sul", "bandeira":"gs"},
  {"nome":"Ilhas Heard e McDonald (Território da Austrália)", "bandeira":"hm"},
  {"nome":"Ilhas Malvinas", "bandeira":"fk"},
  {"nome":"Ilhas Marianas do Norte", "bandeira":"mp"},
  {"nome":"Ilhas Marshall", "bandeira":"mh"},
  {"nome":"Ilhas Menores dos Estados Unidos", "bandeira":"um"},
  {"nome":"Ilhas Norfolk", "bandeira":"nf"},
  {"nome":"Ilhas Salomão", "bandeira":"sb"},
  {"nome":"Ilhas Seychelles", "bandeira":"sc"},
  {"nome":"Ilhas Tokelau", "bandeira":"tk"},
  {"nome":"Ilhas Turks e Caicos", "bandeira":"tc"},
  {"nome":"Ilhas Virgens (Estados Unidos)", "bandeira":"vi"},
  {"nome":"Ilhas Virgens (Inglaterra)", "bandeira":"vg"},
  {"nome":"Índia", "bandeira":"in"},
  {"nome":"Indonésia", "bandeira":"id"},
  {"nome":"Irã", "bandeira":"ir"},
  {"nome":"Iraque", "bandeira":"iq"},
  {"nome":"Irlanda", "bandeira":"ie"},
  {"nome":"Islândia", "bandeira":"is"},
  {"nome":"Israel", "bandeira":"il"},
  {"nome":"Itália", "bandeira":"it"},
  {"nome":"Jamaica", "bandeira":"jm"},
  {"nome":"Japão", "bandeira":"jp"},
  {"nome":"Jersey", "bandeira":"je"},
  {"nome":"Jordânia", "bandeira":"jo"},
  {"nome":"Kiribati", "bandeira":"ki"},
  {"nome":"Kosovo", "bandeira":"xk"},
  {"nome":"Kuait", "bandeira":"kw"},
  {"nome":"Laos", "bandeira":"la"},
  {"nome":"Lesoto", "bandeira":"ls"},
  {"nome":"Letônia", "bandeira":"lv"},
  {"nome":"Líbano", "bandeira":"lb"},
  {"nome":"Libéria", "bandeira":"lr"},
  {"nome":"Líbia", "bandeira":"ly"},
  {"nome":"Liechtenstein", "bandeira":"li"},
  {"nome":"Lituânia", "bandeira":"lt"},
  {"nome":"Luxemburgo", "bandeira":"lu"},
  {"nome":"Macau", "bandeira":"mo"},
  {"nome":"Macedônia (República Yugoslava)", "bandeira":"mk"},
  {"nome":"Madagascar", "bandeira":"mg"},
  {"nome":"Malásia", "bandeira":"my"},
  {"nome":"Malaui", "bandeira":"mw"},
  {"nome":"Maldivas", "bandeira":"mv"},
  {"nome":"Mali", "bandeira":"ml"},
  {"nome":"Malta", "bandeira":"mt"},
  {"nome":"Marrocos", "bandeira":"ma"},
  {"nome":"Martinica", "bandeira":"mq"},
  {"nome":"Maurício", "bandeira":"mu"},
  {"nome":"Mauritânia", "bandeira":"mr"},
  {"nome":"Mayotte", "bandeira":"yt"},
  {"nome":"México", "bandeira":"mx"},
  {"nome":"Micronésia", "bandeira":"fm"},
  {"nome":"Moçambique", "bandeira":"mz"},
  {"nome":"Moldova", "bandeira":"md"},
  {"nome":"Mônaco", "bandeira":"mc"},
  {"nome":"Mongólia", "bandeira":"mn"},
  {"nome":"Montenegro", "bandeira":"me"},
  {"nome":"Montserrat", "bandeira":"ms"},
  {"nome":"Myanma", "bandeira":"mm"},
  {"nome":"Namíbia", "bandeira":"na"},
  {"nome":"Nauru", "bandeira":"nr"},
  {"nome":"Nepal", "bandeira":"np"},
  {"nome":"Nicarágua", "bandeira":"ni"},
  {"nome":"Níger", "bandeira":"ne"},
  {"nome":"Nigéria", "bandeira":"ng"},
  {"nome":"Niue", "bandeira":"nu"},
  {"nome":"Noruega", "bandeira":"no"},
  {"nome":"Nova Caledônia", "bandeira":"nc"},
  {"nome":"Nova Zelândia", "bandeira":"nz"},
  {"nome":"Omã", "bandeira":"om"},
  {"nome":"Países Baixos Caribenhos", "bandeira":"bq"},
  {"nome":"Palau", "bandeira":"pw"},
  {"nome":"Palestina", "bandeira":"ps"},
  {"nome":"Panamá", "bandeira":"pa"},
  {"nome":"Papua-Nova Guiné", "bandeira":"pg"},
  {"nome":"Paquistão", "bandeira":"pk"},
  {"nome":"Paraguai", "bandeira":"py"},
  {"nome":"Peru", "bandeira":"pe"},
  {"nome":"Polinésia Francesa", "bandeira":"pf"},
  {"nome":"Polônia", "bandeira":"pl"},
  {"nome":"Porto Rico", "bandeira":"pr"},
  {"nome":"Portugal", "bandeira":"pt"},
  {"nome":"Qatar", "bandeira":"qa"},
  {"nome":"Quênia", "bandeira":"ke"},
  {"nome":"Quirguistão", "bandeira":"kg"},
  {"nome":"República Centro-Africana", "bandeira":"cf"},
  {"nome":"República Democrática do Congo", "bandeira":"cd"},
  {"nome":"República Dominicana", "bandeira":"do"},
  {"nome":"República Tcheca", "bandeira":"cz"},
  {"nome":"Romênia", "bandeira":"ro"},
  {"nome":"Ruanda", "bandeira":"rw"},
  {"nome":"Rússia (antiga URSS) - Federação Russa", "bandeira":"ru"},
  {"nome":"Saara Ocidental", "bandeira":"eh"},
  {"nome":"Saint-Pierre e Miquelon", "bandeira":"pm"},
  {"nome":"Samoa Americana", "bandeira":"as"},
  {"nome":"Samoa Ocidental", "bandeira":"ws"},
  {"nome":"San Marino", "bandeira":"sm"},
  {"nome":"Santa Helena", "bandeira":"sh"},
  {"nome":"Santa Lúcia", "bandeira":"lc"},
  {"nome":"São Bartolomeu", "bandeira":"bl"},
  {"nome":"São Cristóvão e Névis", "bandeira":"kn"},
  {"nome":"São Martim", "bandeira":"mf"},
  {"nome":"São Martinho", "bandeira":"sx"},
  {"nome":"São Tomé e Príncipe", "bandeira":"st"},
  {"nome":"São Vicente e Granadinas", "bandeira":"vc"},
  {"nome":"Senegal", "bandeira":"sn"},
  {"nome":"Serra Leoa", "bandeira":"sl"},
  {"nome":"Sérvia", "bandeira":"rs"},
  {"nome":"Síria", "bandeira":"sy"},
  {"nome":"Somália", "bandeira":"so"},
  {"nome":"Sri Lanka", "bandeira":"lk"},
  {"nome":"Suazilândia", "bandeira":"sz"},
  {"nome":"Sudão", "bandeira":"sd"},
  {"nome":"Sudão do Sul", "bandeira":"ss"},
  {"nome":"Suécia", "bandeira":"se"},
  {"nome":"Suíça", "bandeira":"ch"},
  {"nome":"Suriname", "bandeira":"sr"},
  {"nome":"Svalbard", "bandeira":"sj"},
  {"nome":"Tadjiquistão", "bandeira":"tj"},
  {"nome":"Tailândia", "bandeira":"th"},
  {"nome":"Taiwan", "bandeira":"tw"},
  {"nome":"Tanzânia", "bandeira":"tz"},
  {"nome":"Território Britânico do Oceano índico", "bandeira":"io"},
  {"nome":"Territórios do Sul da França", "bandeira":"tf"},
  {"nome":"Timor-Leste", "bandeira":"tl"},
  {"nome":"Togo", "bandeira":"tg"},
  {"nome":"Tonga", "bandeira":"to"},
  {"nome":"Trinidad e Tobago", "bandeira":"tt"},
  {"nome":"Tristão da Cunha", "bandeira":"ta"},
  {"nome":"Tunísia", "bandeira":"tn"},
  {"nome":"Turcomenistão", "bandeira":"tm"},
  {"nome":"Turquia", "bandeira":"tr"},
  {"nome":"Tuvalu", "bandeira":"tv"},
  {"nome":"Ucrânia", "bandeira":"ua"},
  {"nome":"Uganda", "bandeira":"ug"},
  {"nome":"Uruguai", "bandeira":"uy"},
  {"nome":"Uzbequistão", "bandeira":"uz"},
  {"nome":"Vanuatu", "bandeira":"vu"},
  {"nome":"Vaticano", "bandeira":"va"},
  {"nome":"Venezuela", "bandeira":"ve"},
  {"nome":"Vietnã", "bandeira":"vn"},
  {"nome":"Wallis e Futuna", "bandeira":"wf"},
  {"nome":"Zâmbia", "bandeira":"zm"},
  {"nome":"Zimbábue", "bandeira":"zw"}
];

void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text("App Paises",
              textAlign: TextAlign.center
          ),
          backgroundColor: Colors.black,
        ),
        body: Paises(),
      ),

    ),
  );

}

class Paises extends StatefulWidget {
  const Paises({Key? key}) : super(key: key);

  @override
  State<Paises> createState() => _PaisesPaginaState();
}

class _PaisesPaginaState extends State<Paises> {
  var nomePais = listaPaises[29]["nome"];
  var bandeira = listaPaises[29]["bandeira"];
  @override
  Widget build(BuildContext context) {

    return Center(
      child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset(
                            'images/$bandeira.png',
                            width: 300,
                            height: 150,
                            fit:BoxFit.fill

                        ),
                      ),
                      ListTile(
                        title: Text('$nomePais',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.black,
                                letterSpacing: 2.5
                            )
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState((){
                            var numeroPais = Random().nextInt(256);
                            nomePais = listaPaises[numeroPais]["nome"];
                            print("Pais Selecionado $nomePais");
                            bandeira = listaPaises[numeroPais]["bandeira"];
                          });
                        },
                        child: Text("Trocar"),
                      )
                    ],
              ),
            )
        ),
      )
    ]
    )
    );
  }
}