// on cr?e un objet ? manipuler 
set croix = object(){
	// on cr?e son image graphique
	set sprite = algo.stamp.clone (array {
        {14, -1, -1, -1, -1, -1, -1, 14},
        {-1, 14, -1, -1, -1, -1, 14, -1},
        {-1, -1, 14, -1, -1, 14, -1, -1},
        {-1, -1, -1, 14, 14, -1, -1, -1},
				{-1, -1, 14, -1, -1, 14, -1, -1},
				{-1, 14, -1, -1, -1, -1, 14, -1},
				{14, -1, -1, -1, -1, -1, -1, 14}
		}, 4);
	// il a des coordonn?es
	set x = 100
	set y = 100	

	// quand on le dessine, on efface d'abord l'?cran
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

//d?but de ce que Algoid ex?cute
croix.dessine()
ui.showAlgo();
algo.hide();

// si on clique, on ex?cute la fonction action
algo.onClick(action)
// on lance la fonction run d?s qu'elle est finie
// ?a boucle jusqu'? ce qu'on clique le carr? stop
util.pulse(run)

