SELECT nameIngredients
FROM(
    SELECT nameIngredients, COUNT(*) cnt
    FROM `Dish` Dish
    INNER JOIN `ingredientsForDish` fullDishMass ON idDish = fullDishMass.idForDish

    GROUP BY nameIngredients) B
    
WHERE cnt IN (

SELECT MAX(cnt)

FROM (
    SELECT nameIngredients, COUNT(*) cnt
    FROM `Dish` Dish
    INNER JOIN `ingredientsForDish` fullDishMass ON idDish = fullDishMass.idForDish

    GROUP BY nameIngredients) A)