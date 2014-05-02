// on cree un objet a manipuler 
set croix = object(){
	// on cree son image graphique
	set sprite = algo.stamp.clone (array {
        {14, -1, -1, -1, -1, -1, -1, 14},
        {-1, 14, -1, -1, -1, -1, 14, -1},
        {-1, -1, 14, -1, -1, 14, -1, -1},
        {-1, -1, -1, 14, 14, -1, -1, -1},
				{-1, -1, 14, -1, -1, 14, -1, -1},
				{-1, 14, -1, -1, -1, -1, 14, -1},
				{14, -1, -1, -1, -1, -1, -1, 14}
		}, 4);
	// il a des coordonnees
	set x = 100
	set y = 100	

	// quand on le dessine, on efface d'abord l'ecran
	set dessine = function(){
		algo.goTo(x,y)
		sprite.draw();
	}

}

set run = function(){
	algo.clear()
	croix.dessine()
}

set action = function(x,y){
	croix.x = x;
	croix.y = y;
}

//debut de ce que Algoid execute
croix.dessine()
ui.showAlgo();
algo.hide();

// si on clique, on execute la fonction action
algo.onClick(action)
// on lance la fonction run des qu'elle est finie
// ca boucle jusqu'a ce qu'on clique le carre stop
util.pulse(run)

