const basculeForm = () => {
  document.querySelectorAll(".pencil").forEach((pencil) => {
    pencil.addEventListener("click", (event) => {
      const id = event.currentTarget.id;
      const element = document.getElementById(`display${id}`);
      element.classList.toggle("item_update_form_display");
    });
  });
};

export { basculeForm };
