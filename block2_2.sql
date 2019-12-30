SELECT name 
FROM(
SELECT Dish.name, SUM(fullDishMass.quantity*FDwithUnit.QuantityOfTypicalUnit) SumOfIngredients
    FROM `Dish` Dish
    INNER JOIN `ingredientsForDish` fullDishMass ON idDish = fullDishMass.idForDish

    INNER JOIN `tableOfUnit` FDwithUnit ON atypicalUnit = fullDishMass.unit AND nameOfIngredient = fullDishMass.nameIngredients

    GROUP BY Dish.name) B
    
WHERE SumOfIngredients IN (

SELECT MAX(SumOfIngredients)

FROM (

    SELECT Dish.name, SUM(fullDishMass.quantity*FDwithUnit.QuantityOfTypicalUnit) SumOfIngredients
    FROM `Dish` Dish
    INNER JOIN `ingredientsForDish` fullDishMass ON idDish = fullDishMass.idForDish

    INNER JOIN `tableOfUnit` FDwithUnit ON atypicalUnit = fullDishMass.unit AND nameOfIngredient = fullDishMass.nameIngredients

    GROUP BY Dish.name) A)