const initRange = () => {
  if (document.querySelector("[type='range']")) {
    $(function() {
      $("[type='range']").value = 1;

      $('[type="range"]').on('change input', function() {
        var rangeValue = $(this).val();
        var rangeMax = $(this)[0].max;
        var rangeId = $(this)[0].id;

        $(`#value-${rangeId} h4`).html(rangeValue+'<span></span>');
        $(this).css('filter', 'hue-rotate(-' + rangeValue + 'deg)');
        $(`#value-${rangeId} h4>span`).css('filter', 'hue-rotate(-' + rangeValue + 'deg)');
        $(`#value-${rangeId} h4`).css({'transform': 'translateX(-100%)', 'left': 100 * rangeValue / rangeMax +'%'});
      });
    });
  }

}

export {initRange}
