const displayReviewForm = () => {
  if (document.getElementById('review-form')) {

    const checkbox = document.querySelector(".check-done")
    const review_form = document.getElementById('review-form')

    checkbox.addEventListener("click", () => {
      if (checkbox.checked == true) {
      review_form.style.display = "block";
      } else {
      review_form.style.display = "none";
      };
    });

    window.addEventListener("load", () => {
      if (checkbox.checked == true) {
      review_form.style.display = "block";
      } else {
      review_form.style.display = "none";
      };
    });
  }
};


export { displayReviewForm };
