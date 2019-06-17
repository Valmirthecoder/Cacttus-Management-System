<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title> Cacctus Dashboard</title>
  {!!HTML::style('css/bootstrap.min.css')!!}
  {!!HTML::style('css/bootstrap-theme.css')!!}
  {!!HTML::style('css/elegant-icons-style.css')!!}
  {!!HTML::style('css/font-awesome.min.css')!!}
  {!!HTML::style('assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css')!!}
  {!!HTML::style('assets/fullcalendar/fullcalendar/fullcalendar.css')!!}
  {!!HTML::style('assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css')!!}
  {!!HTML::style('css/owl.carousel.css')!!}
  {!!HTML::style('css/jquery-jvectormap-1.2.2.css')!!}
  {!!HTML::style('css/fullcalendar.css')!!}
  {!!HTML::style('css/widgets.css')!!}
  {!!HTML::style('css/style.css')!!}
  {!!HTML::style('css/style-responsive.css')!!}
  {!!HTML::style('css/xcharts.min.css')!!}
  {!!HTML::style('css/jquery-ui-1.10.4.min.css')!!}
  @yield('style')
</head>
<body>

<section id="container" class="">
    <section id="main-content">
        @include('layouts.header.header')
        @include('layouts.sidebars.sidebar')
    </section>
</section>



    <!-- javascripts -->
    {!!HTML::script('js/jquery.js')!!}
    {!!HTML::script('js/jquery-ui-1.10.4.min.js')!!}
    {!!HTML::script('js/jquery-1.8.3.min.js')!!}
    {!!HTML::script('js/jquery-ui-1.9.2.custom.min.js')!!}
    {!!HTML::script('js/bootstrap.min.js')!!}
    {!!HTML::script('js/jquery.scrollTo.min.js')!!}
    {!!HTML::script('js/jquery.nicescroll.js')!!}
    {!!HTML::script('assets/jquery-knob/js/jquery.knob.js')!!}
    {!!HTML::script('js/jquery.sparkline.js')!!}
    {!!HTML::script('assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js')!!}
    {!!HTML::script('js/owl.carousel.js')!!}
    {!!HTML::script('js/fullcalendar.min.js')!!}
    {!!HTML::script('assets/fullcalendar/fullcalendar/fullcalendar.js')!!}
    {!!HTML::script('js/calendar-custom.js')!!}
    {!!HTML::script('js/jquery.rateit.min.js')!!}
    {!!HTML::script('assets/chart-master/Chart.js')!!}
    {!!HTML::script('js/scripts.js')!!}
    {!!HTML::script('js/sparkline-chart.js')!!}
    {!!HTML::script('js/easy-pie-chart.js')!!}
    {!!HTML::script('js/jquery-jvectormap-1.2.2.min.js')!!}
    {!!HTML::script('js/jquery-jvectormap-world-mill-en.js')!!}
    {!!HTML::script('jjs/xcharts.min.js')!!}
    {!!HTML::script('js/jquery.autosize.min.js')!!}
    {!!HTML::script('js/jquery.placeholder.min.js')!!}
    {!!HTML::script('js/gdp-data.js')!!}
    {!!HTML::script('js/morris.min.js')!!}
    {!!HTML::script('js/sparklines.js')!!}
    {!!HTML::script('js/charts.js')!!}
    {!!HTML::script('js/jquery.slimscroll.min.js')!!}
    
    <script src="js/charts.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      /* ---------- Map ---------- */
      $(function() {
        $('#map').vectorMap({
          map: 'world_mill_en',
          series: {
            regions: [{
              values: gdpData,
              scale: ['#000', '#000'],
              normalizeFunction: 'polynomial'
            }]
          },
          backgroundColor: '#eef3f7',
          onLabelShow: function(e, el, code) {
            el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
          }
        });
      });
    </script>

</body>
</html>