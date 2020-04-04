import 'package:flutter/material.dart';



class AboutScreen extends StatelessWidget {

	final String about = """
	Coronavírus é uma família de vírus que causam infecções respiratórias. O novo agente do coronavírus foi descoberto em 31/12/19 após casos registrados na China. Provoca a doença chamada de coronavírus (COVID-19).

	Os primeiros coronavírus humanos foram isolados pela primeira vez em 1937. No entanto, foi em 1965 que o vírus foi descrito como coronavírus, em decorrência do perfil na microscopia, parecendo uma coroa.

	A maioria das pessoas se infecta com os coronavírus comuns ao longo da vida, sendo as crianças pequenas mais propensas a se infectarem com o tipo mais comum do vírus. Os coronavírus mais comuns que infectam humanos são o alpha coronavírus 229E e NL63 e beta coronavírus OC43, HKU1...
	""";


	Widget _moreInformationWidget(String text, String content, {String imageURL}) {
		return Container(
			decoration: BoxDecoration(
				color: Colors.grey[200],
			),
			child: Column(
				children: <Widget> [
					if (text.isNotEmpty || text != null)
						Padding(
							padding: const EdgeInsets.all(5),
							child: Text(text,
								style: const TextStyle(
									fontWeight: FontWeight.bold, 
								),
							),
						),
					Padding(
						padding: EdgeInsets.symmetric(vertical:1, horizontal: 2),
						child: Container(
							padding: const EdgeInsets.all(10),
							decoration: BoxDecoration(color: Colors.white),
							child: imageURL == null || imageURL.isEmpty ? Text(
								content,
								style: const TextStyle(height: 1.5),
							) : Image.network(imageURL),
						),
					),
				]
			),
		);
	}

	@override
	Widget build(BuildContext context) {
		return SingleChildScrollView(
			child: Padding(
				padding: const EdgeInsets.all(10),
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.center,
					children: <Widget> [
						const Text(
							"FONTE: https://coronavirus.saude.gov.br/",
							style: TextStyle(color: Colors.grey)
						),
						const SizedBox(height:15,),
						Text(
							about,
							textAlign: TextAlign.justify,
							style: TextStyle(
								fontSize: 15,
							)
						),
						_moreInformationWidget(
							"Período de incubação do coronavírus",
							"Período de incubação é o tempo que leva para os primeiros sintomas aparecerem desde a infecção por coronavírus, que pode ser de 2 a 14 dias."
						),
						_moreInformationWidget(
							"Como o coronavírus é transmitido?",
							"A transmissão acontece de uma pessoa doente para outra ou por contato próximo por meio de:\n\n* O toque do aperto de mão é a principal forma de contágio\n* Gotículas de saliva\n* Espirro\n* Tosse\n* Catarro\n* Objetos ou superfícies contaminadas como celulares, mesas, maçanetas, brinquedos e teclados de computador etc."
						),
						_moreInformationWidget(
							"Quais são os sintomas do coronavírus?",
							"Os sintomas mais comuns são:\n\n* Febre E\n* Tosse OU\n* Dificuldade para respirar\n* Entre outros sintomas gripais\nSe aparecerem os sintomas ligue para 136 ou procure um posto de saúde."
						),
						_moreInformationWidget(
							"Comparativo entre doenças respiratórias",
							"",
							imageURL: "https://saude.gov.br/images/quadro-comparativo-sintomas-31-03-2020-3.png"
						),
						_moreInformationWidget(
							"Como se proteger",
							"* Lave com frequência as mãos até a altura dos punhos, com água e sabão ou então higienize com álcool em gel 70%.\n\n* Ao tossir ou espirrar, cubra nariz e boca com lenço ou com o braço, e não com as mãos.\n\n* Evite tocar olhos, nariz e boca com as mãos não lavadas. Ao tocar, lave sempre as mãos como já indicado.\n\n* Mantenha uma distância mínima cerca de 2 metros de qualquer pessoa tossindo ou espirrando.\n\n* Evite abraços, beijos e apertos de mãos. Adote uma onda amigável sem contato físico, mas sempre com sorriso no rosto.\n\n* Higienize com frequência o celular e brinquedos das crianças.\n\n* Não compartilhe objetos de uso pessoal, como talheres, toalhas, pratos e copos.\n\n* Evite aglomerações e mantenha os ambientes limpos e bem ventilados.\n\n* Se estiver doente, evite contato físico com outras pessoas, principalmente, idosos e doentes crônicos e fique em casa até melhorar.\n\n* Durma bem, tenha uma alimentação saudável e faça atividade física."
						),
						_moreInformationWidget(
							"Adianta tomar vacina contra a gripe?",
							"Não, mas evita que a pessoa tenha outros tipos de doenças respiratórias. Busque orientação de como vacinar em segurança. Em caso de fila, mantenha uma distância de, pelo menos, 2 metros dos demais, principalmente os idosos.\n\nInforme-se se na sua cidade haverá uma estratégia de vacinação diferenciada.\n\nLigue 136 ou entre em contato com a Secretaria de Saúde da sua cidade."
						),
						_moreInformationWidget(
							"Quem corre mais risco?",
							"Pessoas acima dos 60 anos e aquelas com doenças crônicas, como diabetes e doenças cardiovasculares. Esse público não deve viajar nem frequentar cinemas, shopping, shows e outros locais com aglomerações.\n\nA orientação é FICAR EM CASA.\n\nCaso utilize medicamento de uso contínuo, entre em contato com seu médico ou peça para algum familiar ir até o posto de saúde para buscar uma receita com validade ampliada, principalmente no período de outono e inverno. Isso reduz o trânsito desnecessário nos postos de saúde e farmácias."
						),
						_moreInformationWidget(
							"Já existe tratamento contra o coronavírus (COVID-19)?",
							"Não. Os médicos tratam os sintomas para evitar o agravamento da doença e reduzir o desconforto."
						),
						Padding(
							padding: const EdgeInsets.symmetric(vertical: 15),
							child: const Text(
								"Como é definido um caso suspeito de coronavírus?",
								style: TextStyle(
									fontWeight: FontWeight.w500,
								),
							)
						),
						_moreInformationWidget(
							"1. CASO SUSPEITO DE DOENÇA PELO CORONAVÍRUS 2019 (COVID-19)",
							"DEFINIÇÃO 1: SÍNDROME GRIPAL (SG): indivíduo com quadro respiratório agudo, caracterizado por sensação febril ou febre, mesmo que relatada, acompanhada de tosse OU dor de garganta OU coriza OU dificuldade respiratória.\n\n• EM CRIANÇAS (MENOS DE 2 ANOS DE IDADE): considera-se também obstrução nasal, na ausência de outro diagnóstico específico.\n\n• EM IDOSOS: a febre pode estar ausente. Deve-se considerar também critérios específicos de agravamento como sincope, confusão mental, sonolência excessiva, irritabilidade e inapetência.\n\nDEFINIÇÃO 2: SÍNDROME RESPIRATÓRIA AGUDA GRAVE (SRAG): Síndrome Gripal que apresente: dispneia/desconforto respiratório OU Pressão persistente no tórax OU saturação de O2 menor que 95% em ar ambiente OU coloração azulada dos lábios ou rosto.\n\n• EM CRIANÇAS: além dos itens anteriores, observar os batimentos de asa de nariz, cianose, tiragem intercostal, desidratação e inapetência."
						),
						_moreInformationWidget(
							"2. CASO CONFIRMADO DE DOENÇA PELO CORONAVÍRUS 2019 (COVID-19)",
							"POR CRITÉRIO LABORATORIAL: caso suspeito de SG ou SRAG com teste:\n\n• Biologia molecular (RT-PCR em tempo real, detecção do vírus SARS-CoV2): com resultado detectável para SARS-CoV2. Amostra clínica coletada, preferencialmente até o sétimo dia de início de sintomas.\n\n• Imunológico (teste rápido ou sorologia clássica para detecção de anticorpos para o SARS-CoV2): com resultado positivo para anticorpos IgM e/ou IgG. Em amostra coletada após o sétimo dia de início dos sintomas.\n\nPOR CRITÉRIO CLÍNICO-EPIDEMIOLÓGICO: caso suspeito de SG ou SRAG com:\n\nHistórico de contato próximo ou domiciliar, nos últimos 7 dias antes do aparecimento dos sintomas, com caso confirmado laboratorialmente para COVID-19 e para o qual não foi possível realizar a investigação laboratorial específica."
						),
						_moreInformationWidget(
						"3. CASO DESCARTADO DE DOENÇA PELO CORONAVÍRUS 2019 (COVID-19)",
						"Caso suspeito de SG ou SRAG com resultado laboratorial negativo para CORONAVÍRUS (SARS-COV-2 não detectável pelo método de RT-PCR em tempo real), considerando a oportunidade da coleta OU confirmação laboratorial para outro agente etiológico."
						),
						_moreInformationWidget(
						"",
						"\n\nNotificação e registro\n\nO que notificar?\n\nCasos de SG e de SRAG hospitalizado ou óbito por SRAG, independente da hospitalização, que atendam a definição de caso.\n\nQuando notificar?\nDevem ser notificados dentro do prazo de 24 horas a partir da suspeita inicial.\n\nComo notificar?\n• Na Atenção Primária e nas demais unidades de saúde (clínicas, consultórios, pronto atendimento, etc.): Casos de SG devem ser notificados por meio do sistema e-SUS VE www.notifica.saude.gov.br\n• Nas Unidades de Vigilância Sentinela de Síndrome Gripal: Casos de SG devem seguir os fluxos já estabelecidos para a vigilância da influenza e outros vírus respiratórios, devendo ser notificados no Sistema de Informação da Vigilância Epidemiológica da Gripe (SIVEP-Gripe) https://sivepgripe.saude.gov.br/sivepgripe/\n• Nos hospitais: Casos de SRAG hospitalizados devem ser notificados no Sistema de Informação da Vigilância Epidemiológica da Gripe (SIVEP-Gripe) https://sivepgripe.saude.gov.br/sivepgripe/\n• Óbitos por SRAG independente de internação: devem ser notificados no Sistema de Informação da Vigilância Epidemiológica da Gripe (SIVEP-Gripe) https://sivepgripe.saude.gov.br/sivepgripe/\n\nQuem deve notificar?\nProfissionais e instituições de saúde do setor público ou privado, em todo o território nacional.\n\nPor que notificar?\nA COVID-19 é uma Emergência de Saúde Pública de Importância Internacional (ESPII) e Emergência de Saúde Pública de Importância Nacional (ESPIN), segundo anexo II do Regulamento Sanitário Internacional, portanto, um evento de saúde pública de notificação imediata, como determina a Portaria de Consolidação Nº 04, anexo V, capítulo I, seção I (http://j.mp/portariadeconsolidacao4ms).\n\n"),
						_moreInformationWidget(
							"Quando devo usar máscara?",
							"Use máscara se estiver tossindo ou espirrando para evitar transmitir vírus para outras pessoas.\n\nPara pessoas saudáveis, use máscara somente se estiver cuidando de uma pessoa com doenças respiratórias.\n\nAs máscaras são eficazes somente quando usadas em combinação com a limpeza frequente as mãos com água e sabão ou higienizadas com álcool em gel 70%.\n\nApós usar a máscara, descarte-a em local adequado e lave as mãos.\n\nEm todas as situações recomendadas, utilize a máscara do tipo cirúrgico. A máscara N95 é de uso dos profissionais de saúde e é fundamental para sua proteção. Há risco de faltar, caso a população compre também"
						),
						_moreInformationWidget(
							"Vou viajar para um local com casos de coronavírus (COVID-19). O que faço?",
							"Avalie a necessidade real da viagem e adie, se possível. Se for inevitável, previna-se e siga as orientações das autoridades de saúde locais.",
						),
						_moreInformationWidget(
							"Voltei de viagem internacional. O que faço?",
							"Recomenda-se isolamento domiciliar voluntário por 7 dias após o desembarque, mesmo que não tenha apresentado os sintomas.\n\nReforce os hábitos de higiene, como lavar as mãos com água e sabão. Caso apresente sintomas de gripe, siga as orientações do Ministério da Saúde para isolamento domiciliar."
						),
						_moreInformationWidget(
							"Voltei de viagem doméstica. O que faço?",
							"Recomenda-se isolamento domiciliar voluntário por 7 dias após o desembarque, mesmo que não tenha apresentado os sintomas.\n\nReforce os hábitos de higiene, como lavar as mãos com água e sabão.\n\nCaso apresente sintomas de gripe, siga as orientações do Ministério da Saúde para isolamento domiciliar."
						),
						_moreInformationWidget(
							"Estou com sintomas de gripe. O que devo fazer?",
							"Se você está com sintomas de gripe, fique em casa por14 dias e siga as orientações do Ministério da Saúde para o isolamento domiciliar.\nSó procure um hospital de referência se estiver com falta de ar."
						),
						_moreInformationWidget(
							"Há um caso de coronavírus confirmado na minha casa. Como fazer o isolamento domiciliar?",
							"Pessoas com diagnóstico confirmado de coronavírus precisam ficar em isolamento domiciliar. Veja como proteger sua família:\n\nA distância mínima entre o paciente e os demais moradores é de 1 metro.\nNo quarto usado para o isolamento, mantenha as janelas abertas para circulação do ar, a porta fechada durante todo o isolamento e limpe a maçaneta frequentemente com álcool 70% ou água sanitária.\nAtenção! Em casas com apenas um quarto, os demais moradores devem dormir na sala, longe do paciente infectado.\n\nItens que precisam ser separados:\nO lixo produzido pelo paciente contaminado precisa ser separado e descartado.\nToalhas de banho, garfos, facas, colheres, copos e outros objetos usados pelo paciente.\nSofás e cadeiras também não podem ser compartilhados.\nOs móveis da casa precisam ser limpos frequentemente com água sanitária ou álcool 70%.\n\nCondutas para a pessoa contaminada:\n\nUtilize máscara o tempo todo.\nSe for preciso cozinhar, use máscara de proteção, cobrindo boca e nariz todo o tempo.\nDepois de usar o banheiro, nunca deixe de lavar as mãos com água e sabão e sempre limpe vaso, pia e demais superfícies com álcool ou água sanitária para desinfecção do ambiente.\nCondutas de todos os moradores:\n\nSe uma pessoa da casa tiver diagnóstico positivo, todos os moradores ficam em isolamento por 14 dias também.\nCaso outro familiar da casa também inicie os sintomas leves, ele deve reiniciar o isolamento de 14 dias. Se os sintomas forem graves, como dificuldade para respirar, ele deve procurar orientação médica."
						),
						_moreInformationWidget(
							"Há riscos maiores para grávidas?",
							"Ainda não existem dados específicos, mas elas passam por mudanças imunológicas que podem deixá-las mais vulneráveis."
						),
						_moreInformationWidget(
							"Posso frequentar estádios, teatros, shoppings, shows, cinemas e igrejas?",
							"Não é recomendado, principalmente para quem tem mais de 60 anos, alguma doença crônica ou sintomas de doenças respiratórias.\n\nOs organizadores ou responsáveis por eventos de grande massa devem cancelar ou adiar, se houver tempo hábil. Não sendo possível, recomenda-se que o evento ocorra sem público. Não sendo possível, os organizadores devem cumprir os requisitos previstos na Portaria n.º 1.139, de 10 de junho de 2013."
						),
						_moreInformationWidget(
							"Tenho uma empresa. O que devo fazer?",
							"* Disponibilize locais para lavar as mãos com frequência, dispenser com álcool em gel 70% e toalhas de papel descartáveis.\n* Amplie a frequência de limpeza de pisos, corrimãos, maçanetas e banheiros com álcool 70% ou solução de água sanitária.\n* Incentive a realização de reuniões virtuais, cancele viagens não essenciais e, se possível, faça um rodízio com os funcionários e permita o trabalho remoto (home office).\n* Adote horários alternativos para entrada dos funcionários e faça escalas de forma que não estejam todos ao mesmo tempo no local.\n* Funcionários doentes devem ficar em casa. Facilite a comprovação do atestado, evitando que eles compareçam à empresa.\n* Caso necessite de material de orientação para prevenção do vírus, acesse saude.gov.br/coronavirus"
						),
						_moreInformationWidget(
							"Quais as orientações para as instituições de ensino?",
							"Planeje antecipação das férias, visando reduzir o prejuízo do calendário escolar, ou utilize ferramentas de ensino a distância."
						),
						_moreInformationWidget(
							"Tem algum risco em andar de táxi, metrô, trem e ônibus?",
							"Recomenda-se evitar. Se não puder, evite horário de pico, tente manter uma distância segura de uma pessoa para outra e redobre os cuidados com a higiene."
						),
						_moreInformationWidget(
							"Vitaminas D e C ou água com limão previnem o coronavírus (COVID-19)?",
							"Nenhuma delas. Não existe vitamina, terapia alternativa ou remédio licenciado capaz de evitar o contágio ou tratar a doença"
						),
						_moreInformationWidget(
							"Animais de estimação transmitem coronavírus (COVID-19)?",
							"Ainda não existem evidências nesse sentido."
						),
						_moreInformationWidget(
							"O Brasil está preparado para enfrentar o coronavírus (COVID-19)?",
							"Antes mesmo da Organização Mundial de Saúde (OMS) confirmar a epidemia na China, o Brasil já havia identificado o surto.\nDiante deste cenário, foram realizados boletins epidemiológicos diários, materiais para a vigilância, instruções de procedimentos da doença e fortalecimento da rede laboratorial.\nAlém disso, foi criado um site (saude.gov.br/coronavirus) para esclarecer as dúvidas da população e de profissionais de saúde.\nNosso país possui um Plano de Contingência em todo o território nacional que prevê ações para uma transmissão da doença local ou ampliada, de acordo com as medidas previstas pelo protocolo mundial."
						),
						const SizedBox(height: 15),
						const Text(
							"FONTE: https://coronavirus.saude.gov.br/",
							style: TextStyle(color: Colors.grey)
						),
					]
				),
			),
		);
	}
}
