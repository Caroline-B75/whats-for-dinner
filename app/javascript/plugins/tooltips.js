const allowTooltips = () => {
  $(document).ready(function(){
      $('[data-toggle="tooltip"]').tooltip();
  });
};

export { allowTooltips };
