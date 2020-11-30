const displayReviewForm = () => {
  const checkbox = document.querySelector(".check-done")
  const review_form = document.getElementById('review-form')

  if (checkbox) {
    checkbox.addEventListener("click", () => {
      // review_form.classList.toggle('d-none');
      if (checkbox.checked == true) {
        review_form.classList.remove('d-none');
      } else {
        review_form.classList.add('d-none');
      };
    });
    // window.addEventListener("load", () => {
    //   if (checkbox.checked == true) {
    //   review_form.style.display = "block";
    //   } else {
    //   review_form.style.display = "none";
    //   };
    // });
  };

};


export { displayReviewForm };
