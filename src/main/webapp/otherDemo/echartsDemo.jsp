<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/jslider.css" type="text/css">
	<link rel="stylesheet" href="css/jslider.blue.css" type="text/css">
	<link rel="stylesheet" href="css/jslider.plastic.css" type="text/css">
	<link rel="stylesheet" href="css/jslider.round.css" type="text/css">
	<link rel="stylesheet" href="css/jslider.round.plastic.css" type="text/css">
    <title>ECharts</title>
    <!-- 引入 echarts.js -->
    <script src="js/echarts.js"></script>
    <script src="js/jquery-1.4.2.js"></script>
	<script src="js/jquery.dependClass.js"></script>
	<script src="js/jquery.slider-min.js"></script>
	<style type="text/css">
		.container{
			position:relative;width:600px;
		}
		#main{
			width:600px;height:400px;
		}
		.container .shade{
			position:absolute;
			height:350px;
			width:100px;
			background-color:rgba(0,0,0,0.2);
			top: 20px;
			left:10px;
		}
		.container .layout-slider{
			width:600px;
			margin-left: 55px;
		}
		.layout-slider span{
			display: inline-block; width: 520px;
		}
	</style>
</head>
<body>
    <div class="container">
	    <div id="main"></div>
	    <div class="layout-slider">
	    	<span>
	    		<input id="Slider1" type="slider" name="price" value="3.5;6" />
	    	</span>
	    </div>
	    <div class="shade">
	    </div>
    </div>

    <script type="text/javascript" charset="utf-8">
		jQuery("#Slider1").slider({ 
			from: 480, 
			to: 1020, 
			step: 1,
			scale: [1,2,3,4,5,6,7],
			smooth: true, 
			round: 0,
			dimension: "&nbsp;", 
			skin: "plastic",
			calculate: function( value ){
				var left_ = $(".jslider-pointer").css("left");
				var width_ = $(".layout-slider span").width();
				if(left_){
					var offset_l = left_.replace("%","")/100 * width_ + 55;
					var shade_w = $(".jslider_plastic .jslider-bg i.v").width();
					$(".shade").css({"left":offset_l,"width":shade_w});
				}
				return value;
			},
			onstatechange: function( value ){
			}
		});
    </script>

    <script type="text/javascript">
        var myChart = echarts.init(document.getElementById('main'));

        var option = {
		    title: {
		        text: '堆叠区域图'
		    },
		    tooltip : {
		        trigger: 'axis',
		        axisPointer: {
		            type: 'cross',
		            label: {
		                backgroundColor: '#6a7985'
		            }
		        }
		    },
		    legend: {
		        data:['邮件营销','联盟广告','视频广告','直接访问','搜索引擎']
		    },
		    toolbox: {
		        feature: {
		            saveAsImage: {}
		        }
		    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    xAxis : [
		        {
		            type : 'category',
		            boundaryGap : false,
		            data : ['1','2','3','4','5','6','7']
		        }
		    ],
		    yAxis : [
		        {
		            type : 'value'
		        }
		    ],
		    series : [
		        {
		            name:'邮件营销',
		            type:'line',
		            stack: '总量',
		            areaStyle: {
		            	normal: {
		            		color:'rgb(227,23,13)'
		            	}
		        	},
		            data:[120, 132, 101, 134, 90, 230, 210]
		        },
		        {
		            name:'联盟广告',
		            type:'line',
		            stack: '总量',
		            areaStyle: {normal: {
		            	color:'rgb(176,23,31)'
		            }},
		            data:[220, 182, 191, 234, 290, 330, 310]
		        },
		        {
		            name:'视频广告',
		            type:'line',
		            stack: '总量',
		            areaStyle: {normal: {
		            	color:'rgb(255,125,64)'
		            }},
		            data:[150, 232, 201, 154, 190, 330, 410]
		        },
		        {
		            name:'直接访问',
		            type:'line',
		            stack: '总量',
		            areaStyle: {normal: {
		            	color:'rgb(127,255,0)'
		            }},
		            data:[320, 332, 301, 334, 390, 330, 320]
		        },
		        {
		            name:'搜索引擎',
		            type:'line',
		            stack: '总量',
		            label: {
		                normal: {
		                    show: true,
		                    position: 'top'
		                }
		            },
		            areaStyle: {normal: {}},
		            data:[820, 932, 901, 934, 1290, 1330, 1320]
		        }
		    ]
		};


        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</body>
</html>