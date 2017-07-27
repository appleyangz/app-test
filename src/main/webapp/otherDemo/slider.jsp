<%@ page language="java" pageEncoding="UTF-8"%>
<%
String rootPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
String cdnPath = rootPath +"/cdn";
String basePath = rootPath + request.getContextPath()+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>slider</title>
	<link rel="stylesheet" href="css/jslider.css" type="text/css">
	<link rel="stylesheet" href="css/jslider.blue.css" type="text/css">
	<link rel="stylesheet" href="css/jslider.plastic.css" type="text/css">
	<link rel="stylesheet" href="css/jslider.round.css" type="text/css">
	<link rel="stylesheet" href="css/jslider.round.plastic.css" type="text/css">
	<!--[if IE 6]>
    <link rel="stylesheet" href="css/jslider.ie6.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/jslider.blue.ie6.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/jslider.plastic.ie6.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/jslider.round.ie6.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/jslider.round.plastic.ie6.css" type="text/css" media="screen">
	<![endif]-->

	<script type="text/javascript" src="<%=basePath%>productrunNew/otherDemo/js/jquery-1.4.2.js"></script>
	<script type="text/javascript" src="<%=basePath%>productrunNew/otherDemo/js/jquery.dependClass.js"></script>
	<script type="text/javascript" src="<%=basePath%>productrunNew/otherDemo/js/jquery.slider-min.js"></script>
	
	<style type="text/css" media="screen">
	  body { background: #EEF0F7; }
	 .layout { padding: 50px; font-family: Georgia, serif; }
	 .layout-slider { margin-bottom: 60px; width: 50%; }
	 .layout-slider-settings { font-size: 12px; padding-bottom: 10px; }
	 .layout-slider-settings pre { font-family: Courier; }
	</style>

</head>
<body>
  
  <div class="layout">

    <div class="layout-slider" style="width: 100%">
      Slider <span style="display: inline-block; width: 400px; padding: 0 5px;"><input id="Slider1" type="slider" name="price" value="30000.5;60000" /></span>  in string
    </div>
    <script type="text/javascript" charset="utf-8">
      jQuery("#Slider1").slider({ from: 1000, to: 100000, step: 500, smooth: true, round: 0, dimension: "&nbsp;$", skin: "plastic" });
    </script>

    <div class="layout-slider-settings">
<pre>{
  from: 5,
  to: 50,
  step: 2.5,
  round: 1,
  dimension: '&amp;nbsp;€'
}</pre>
    </div>
    <div class="layout-slider">
      <input id="SliderSingle" type="slider" name="price" value="20" />
    </div>
    <script type="text/javascript" charset="utf-8">
      jQuery("#SliderSingle").slider({ from: 5, to: 50, step: 2.5, round: 1, dimension: '&nbsp;€', skin: "round" });
    </script>

    <div class="layout-slider-settings">
<pre>{
  from: 5000,
  to: 150000,
  heterogeneity: ['50/50000'],
  step: 1000,
  dimension: '&amp;nbsp;$'
}</pre>
    </div>
    <div class="layout-slider">
      <input id="Slider2" type="slider" name="price" value="5000;50000" />
    </div>
    <script type="text/javascript" charset="utf-8">
      jQuery("#Slider2").slider({ from: 5000, to: 150000, heterogeneity: ['50/50000'], step: 1000, dimension: '&nbsp;$' });
    </script>

    <div class="layout-slider-settings">
<pre>{
  from: 0,
  to: 500,
  heterogeneity: ['50/100', '75/250'],
  scale: [0, '|', 50, '|' , '100', '|', 250, '|', 500],
  limits: false,
  step: 1,
  dimension: '&amp;nbsp;m&lt;small&gt;2&lt;/small&gt;'
}</pre>
    </div>
    <div class="layout-slider">
      <input id="Slider3" type="slider" name="area" value="25;75" />
    </div>
    <script type="text/javascript" charset="utf-8">
      jQuery("#Slider3").slider({ from: 0, to: 500, heterogeneity: ['50/100', '75/250'], scale: [0, '|', 50, '|', '100', '|', 250, '|', 500], limits: false, step: 1, dimension: '&nbsp;m<small>2</small>', skin: "round_plastic" });
    </script>

    <div class="layout-slider-settings">
<pre>{
  from: 1,
  to: 30,
  heterogeneity: ['50/5', '75/15'],
  scale: [1, '|', 3, '|', '5', '|', 15, '|', 30],
  limits: false,
  step: 1,
  dimension: '',
  skin: "blue"
}</pre>
    </div>
    <div class="layout-slider">
      <input id="Slider4" type="slider" name="area" value="2;10" />
    </div>
    <script type="text/javascript" charset="utf-8">
      jQuery("#Slider4").slider({ from: 1, to: 30, heterogeneity: ['50/5', '75/15'], scale: [1, '|', 3, '|', '5', '|', 15, '|', 30], limits: false, step: 1, dimension: '', skin: "blue", callback: function( value ){ console.dir( this ); } });
    </script>


    <div class="layout-slider-settings">
<pre>{
  from: 480,
  to: 1020,
  step: 15,
  dimension: '',
  scale: ['8:00', '9:00', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00', '17:00'],
  limits: false,
  calculate: function( value ){
    var hours = Math.floor( value / 60 );
    var mins = ( value - hours*60 );
    return (hours &lt; 10 ? "0"+hours : hours) + ":" + ( mins == 0 ? "00" : mins );
  },
  onstatechange: function( value ){
    console.dir( this );
  }
}</pre>
    </div>
    <div class="layout-slider">
      <input id="Slider5" type="slider" name="area" value="600;720" />
    </div>
    <script type="text/javascript" charset="utf-8">
      
      jQuery("#Slider5").slider({ from: 480, to: 1020, step: 15, dimension: '', scale: ['8:00', '9:00', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00', '17:00'], limits: false, calculate: function( value ){
        var hours = Math.floor( value / 60 );
        var mins = ( value - hours*60 );
        return (hours < 10 ? "0"+hours : hours) + ":" + ( mins == 0 ? "00" : mins );
      }})

    </script>
    
  </div>

    
</body>
</html>