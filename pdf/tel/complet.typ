/*
Outil permettant de générer des fichier de cours avec activité associée
- par chapitre -> display
avec CLI en utilisant les variables "nbr" et "matiere" (via sys.input)
- en entier (livre) -> displayAll
*/

#import("@local/activite:0.1.0") : c

#let displayAll = () => {
  for i in range(1,8) {
    let matiere = "chimie"
    let chap ="C0"+str(i)
    include "../../cours/"+matiere+"/"+chap+"/"+chap+".typ"
    include "../../activites/"+matiere+"/"+chap+"/Act"+chap+".typ"
    counter(heading).update(0) //reset sous titres
    c.update(0) // reset numero exo
  }

  counter(heading).update(0)

  for i in range(1,3) {
    let matiere = "physique"
    let chap ="P0"+str(i)
    include "../../cours/"+matiere+"/"+chap+"/"+chap+".typ"
    include "../../activites/"+matiere+"/"+chap+"/Act"+chap+".typ"
    counter(heading).update(0)
    c.update(0)
  }
}

#let display(nbr:none,matiere:none) = {
    let chap
    if (matiere == "physique") {chap = "P0" } 
    else if (matiere == "chimie") {chap = "C0"}
    chap = chap+str(nbr)
    include "../../cours/"+matiere+"/"+chap+"/"+chap+".typ"
    //include "../../activites/"+matiere+"/"+chap+"/Act"+chap+".typ" //cours uniquement pour le téléphone
}

#let nbr = int(sys.inputs.nbr)
#let matiere = sys.inputs.matiere
#display(nbr:nbr,matiere: matiere)
// #displayAll()
