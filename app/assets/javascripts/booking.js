let dateSelect     = $('#flight-datepicker');
let dateDepart     = $('#start-date');
let dateReturn     = $('#end-date');
let spanDepart     = $('.date-depart');
let spanReturn     = $('.date-return');
let spanDateFormat = 'ddd, MMMM D yyyy';

dateSelect.datepicker({
  autoclose: true,
  format: "mm/dd",
  maxViewMode: 0,
  startDate: "now"
}).on('change', function() {
  let start = $.format.date(dateDepart.datepicker('getDate'), spanDateFormat);
  let end = $.format.date(dateReturn.datepicker('getDate'), spanDateFormat);
  spanDepart.text(start);
  spanReturn.text(end);
});
