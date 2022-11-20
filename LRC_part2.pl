
/*
- L’instance I appartient au concept C ( I : C).
- Les concepts C1 et C2 ont une intersection vide (C1 ⊓ C2 ⊑ ⊥ ).

=> ajouter négation aux assertions de concepts et aux assertions de rôles
de la Abox et démontrer que ensemble insatisfiable

A ⊓ B => and(A,B)
¬A, not(A) => or(A, B)
*/

/*
some(R, C):-  .
all(R, C):-  .
*/

/* premiere_etape(
    listeRepresentantLaTbox, 
    listeRepresentantAssertionsConceptsAbox,
    listeRepresentantAssertionsRolesAbox)
*/
premiere_etape(Tbox, Abi, Abr):-  .



/*
deuxieme_etape(
    listeAssertionConceptsInitiauxAbox, 
    listeAssertionConceptsCompletesApresSomissionPropADemontrer,
    listeRepresentantTbox)
*/
deuxieme_etape(Abi, Abi1, Tbox):- 

    saisie_et_traitement_prop_a_demontrer(Abi,Abi1,Tbox).

saisie_et_traitement_prop_a_demontrer(Abi,Abi1,Tbox) :-
nl,
write('Entrez le numero du type de proposition que vous voulez 
demontrer :'),nl,
write('1 Une instance donnee appartient a un concept donne.'),nl,
write('2 Deux concepts n"ont pas d"elements en commun (ils ont une 
intersection vide).'),nl, read(R), suite(R,Abi,Abi1,Tbox).

suite(1,Abi,Abi1,Tbox) :- 
 acquisition_prop_type1(Abi,Abi1,Tbox),!.
suite(2,Abi,Abi1,Tbox) :- 
 acquisition_prop_type2(Abi,Abi1,Tbox),!.
suite(R,Abi,Abi1,Tbox) :- 
14
 nl,write('Cette reponse est incorrecte.'),nl,
 saisie_et_traitement_prop_a_demontrer(Abi,Abi1,Tbox).



/*
troisieme_etape(
    listeAssertionsConceptsCompletee,
    listeAssetionRolesPouvantEvoluer)
*/
troisieme_etape(Abi1, Abr):-  .



%PROGRAMME
programme :- 
 premiere_etape(Tbox,Abi,Abr),
 deuxieme_etape(Abi,Abi1,Tbox),
 troisieme_etape(Abi1,Abr).