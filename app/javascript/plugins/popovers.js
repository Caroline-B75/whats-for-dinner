const allowPopovers = () => {
  $(function () {
    $('[data-toggle="popover"]').popover({
      html : true,
    });
  });
};

export { allowPopovers };
