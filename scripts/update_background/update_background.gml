/// update_background ()

var currBackgroundId = layer_background_get_id(layer_get_id("Background"));

var backgroundToSet = art1Background;

switch (global.artLvl) {
	case (1) : backgroundToSet = art2Background; break;
	case (2) : backgroundToSet = art3Background; break;
}

layer_background_change(currBackgroundId, backgroundToSet);