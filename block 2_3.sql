SELECT *
FROM `Dish` Dish
INNER JOIN `ingredientsForDish` fullDishMilk ON idDish = fullDishMilk.idForDish AND FIND_IN_SET(('�����'), fullDishMilk.nameIngredients)

INNER JOIN `ingredientsForDish` fullDishFlour ON idDish = fullDishFlour.idForDish AND FIND_IN_SET(('����'), fullDishFlour.nameIngredients)

INNER JOIN `ingredientsForDish` fullDishEggs ON idDish = fullDishEggs.idForDish AND FIND_IN_SET(('����'), fullDishEggs.nameIngredients)

LEFT JOIN `ingredientsForDish` fullDishInv ON idDish = fullDishInv.idForDish AND NOT(FIND_IN_SET(('����'), fullDishInv.nameIngredients) OR FIND_IN_SET(('�����'), fullDishInv.nameIngredients) OR FIND_IN_SET(('����'), fullDishInv.nameIngredients))

WHERE fullDishInv.id is NULL
