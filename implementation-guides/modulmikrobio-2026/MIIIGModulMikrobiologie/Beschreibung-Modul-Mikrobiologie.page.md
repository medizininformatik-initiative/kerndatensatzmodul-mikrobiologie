## Beschreibung des Informationsmodells für das KDS-Modul Mikrobiologie

Das Erweiterungsmodul Mikrobiologie umfasst die Informationen zum Nachweis und zur Beschreibung von Mikroorganismen wie Bakterien, Viren und Pilzen.
Das Informationsmodell beschreibt die verschiedenen mikrobiellen Untersuchungen (Observationen) mit unterschiedlichen diagnostischen Methoden wie:

- Kultur und Mikroskopie
- Molekulare Diagnostik
- Serologie/Immunologie

Weitere Eigenschaften des Mikroorganismus, die möglicherweise mit mehreren Methoden bestimmt oder abgeleitet werden können, wurden in der folgenden Kategorie zusammengefasst:
 
- Weitere Eigenschaften des Organismus.

{{render:medizininformatik-initiative-modul-mikrobiologie/mii-kerndatensatz-modul-bersicht}}

### Kultur und Mikroskopie

Die unter den beiden diagnostischen Methoden Mikrobiologiekultur und Mikroskopie modellierten Profile beschreiben Informationen zum Nachweis des Mikroorganismus, zur Koloniezahl, zur antimikrobiellen Empfindlichkeit und zur mikroskopischen Beschreibung des Befundes.
Der LOINC-Code für den Nachweis des Mikroorganismus ist der generische Code "Microorganism identified in Unspecified specimen by Culture", der Name des spezifischen Mikroorganismus, der nachgewiesen oder untersucht wurde, ist als FHIR Component des  Observation-Profils definiert.
Das Keimzahl Profil sieht sowohl die Möglichkeit eines numerischen als auch eines semiquantitativen Wertes vor.
Für die Empfindlichkeitstests wurde ein intensionaler Value Set erstellt, der alle LONC-Codes umfasst, die sich auf die antimikrobielle phänotypische Empfänglichkeit beziehen. Die Ergebnisse können sowohl nach dem EUCAST-System als auch nach CLSI angegeben werden.
Die Informationen zur Mikroskopie umfassen die verwendete spezifische Methode, die Morphologie, den Barlett- und Nugent-Score.

{{render:medizininformatik-initiative-modul-mikrobiologie/Kultur}}
### Molekulare Diagnostik
Auch in diesem Fall ist der Name des Tests generisch "Microorganism identified in Isolate or Specimen by Molecular genetics method" und der Name des Mikroorganismus wird separat angegeben. 
Mögliche numerische Ergebnisse der Beobachtung , wie z.B. die PCR-Cycle Threshold oder die quantitative Messung von Antikörpern,können als FHIR Component-Elemente beschrieben werden.

{{render:medizininformatik-initiative-modul-mikrobiologie/Molekular}}
### Serologie und Immunologie
Die in diesem Abschnitt enthaltenen Informationen beschreiben sowohl qualitative als auch quantitative Ergebnisse zu Antigen- und Antikörperuntersuchungen sowie zur Avidität.

{{render:medizininformatik-initiative-modul-mikrobiologie/Serologie}}
### Weitere Eigenschaften des Organismus
Da genomische Tests bei mikrobiologischen Untersuchungen immer mehr an Bedeutung gewinnen, können viele Eigenschaften des Mikroorganismus wie Resistenzmechanismus, Virulenzfaktor und MDRO-Klasse mit dieser Technik bestimmt werden. Einige dieser Eigenschaften lassen sich jedoch auch aus den Ergebnissen von Tests ableiten, die phänotypische Methoden verwenden. Darüber hinaus können einige molekulare Tests Resistenzverhalten vorhersagen, das nur durch phänotypische Empfindlichkeitstests beobachtet werden kann.  Aus diesem Grund haben wir die Informationen über die Eigenschaften des Mikroorganismus in einer eigenen Gruppe zusammengefasst.
Informationen zur MRGN-Klassifizierung nach dem Robert-Koch-Institut sind ebenfalls aufgeführt.

{{render:medizininformatik-initiative-modul-mikrobiologie/Weitere}}




