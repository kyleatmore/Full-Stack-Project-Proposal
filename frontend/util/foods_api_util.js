export const fetchAllFoods = () => {
  return $.ajax({
    method: "GET",
    url: "/api/foods"
  });
};

export const addNewFood = (diaryId, food) => {
  return $.ajax({
    method: "POST",
    url: `/api/food_diaries/${diaryId}/foods`,
    data: { food }
  });
};
