SELECT *
FROM `Dish` Dish
INNER JOIN `ingredientsForDish` fullDishMilk ON idDish = fullDishMilk.idForDish AND FIND_IN_SET(('сахар'), fullDishMilk.nameIngredients)

INNER JOIN `ingredientsForDish` fullDishFlour ON idDish = fullDishFlour.idForDish AND FIND_IN_SET(('мука'), fullDishFlour.nameIngredients)

INNER JOIN `ingredientsForDish` fullDishEggs ON idDish = fullDishEggs.idForDish AND FIND_IN_SET(('€йца'), fullDishEggs.nameIngredients)

LEFT JOIN `ingredientsForDish` fullDishInv ON idDish = fullDishInv.idForDish AND NOT(FIND_IN_SET(('€йца'), fullDishInv.nameIngredients) OR FIND_IN_SET(('сахар'), fullDishInv.nameIngredients) OR FIND_IN_SET(('мука'), fullDishInv.nameIngredients))

WHERE fullDishInv.id is NULL
