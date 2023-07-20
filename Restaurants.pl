serves(american, [salad, steak, sandwiches, burgers, fried_chicken]).
serves(burger_place, [burgers, fries, onion_rings]).
serves(chinese, [eggrolls, rice, shrimp, soup, noodles]).
serves(indian, [papadam, bagan_bharta, rice, tandoori, naan]).
serves(italian, [salad, pasta, cioppino, snapper, bread, garlic_bread]).
serves(japanese, [sashimi, rice, tempura, noodles]).
serves(mediterranean, [gyros, hummus, pita, falafel]).
serves(mexican, [tacos, beans, rice, enchiladas, fish_tacos]).
serves(pizza_place, [pizza, salad, garlic_bread]).
serves(thai, [rice, noodles, larb, pad_thai]).

is_vegetarian(Dish) :- dish(vegetarian, Dishes), member(Dish, Dishes).

is_meat(Dish) :- dish(meat, Dishes), member(Dish, Dishes).

is_seafood(Dish) :- dish(seafood, Dishes), member(Dish, Dishes).

is_starch(Dish) :- dish(starch, Dishes), member(Dish, Dishes).

dish(vegetarian, [beans, bagan_bharta, enchiladas, falafel, hummus, pizza, salad, soup, tempura, onion_rings | StarchDishes]) :-
    dish(starch, StarchDishes).
dish(meat, [burgers, enchiladas, gyros, pad_thai, pizza, steak, sandwiches, fried_chicken, tacos, tandoori, larb]).
dish(seafood, [snapper, cioppino, sashimi, shrimp, clams, fish_tacos, tempura]).
dish(starch, [naan, papadam, bread, rice, noodles, pita, garlic_bread, pasta, fries]).

restaurant(yans, chinese, thayer_street).
restaurant(pizza_marvin, pizza_place, fox_point).
restaurant(bajas, mexican, thayer_street).
restaurant(andreas, mediterranean, thayer_street).
restaurant(chinatown, chinese, thayer_street).
restaurant(kabob_n_curry, indian, thayer_street).
restaurant(waterman_grille, american, wayland).
restaurant(dolores, mexican, fox_point).
restaurant(tallulahs, mexican, fox_point).
restaurant(red_stripe, american, wayland).
restaurant(pasta_beach, italian, wayland).
restaurant(haruki, japanese, wayland).
restaurant(heng, thai, thayer_street).
restaurant(mikes, pizza_place, thayer_street).
restaurant(east_side_pocokets, mediterranean, thayer_street).
restaurant(bees, thai, fox_point).
restaurant(shake_shack, burger_place, thayer_street).
restaurant(al_forno, italian, fox_point).
restaurant(lims, thai, wayland).

# Queries

#1. restaurant(Restaurant, _, wayland).
#2. restaurant(Restaurant, italian, _).
#3. serves(Kind, Dishes), member(snapper, Dishes).
#4. serves(Kind, Dishes), member(rice, Dishes).
#5. restaurant(Restaurant, _, fox_point), serves(Kind, Dishes), is_vegetarian(Dish), member(Dish, Dishes).
