<%@ page contentType="text/html;charset=gb2312"%>

<%@ page import="org.jfree.chart.ChartFactory, 
org.jfree.chart.JFreeChart, 
org.jfree.chart.plot.PlotOrientation, 
org.jfree.chart.servlet.ServletUtilities, 
org.jfree.data.category.DefaultCategoryDataset,
java.awt.*,
org.jfree.chart.plot.*,
org.jfree.chart.axis.*,
org.jfree.chart.title.TextTitle"%>

<% 
DefaultCategoryDataset dataset = new DefaultCategoryDataset(); 
dataset.addValue(61, "Guangzhou����", "Pig���������л��������͹��й�������");
dataset.addValue(220, "Guangzhou����", "Beef����");
dataset.addValue(530, "Guangzhou����", "Chicken����");
dataset.addValue(340, "Guangzhou����", "Fish����");



JFreeChart chart = ChartFactory.createBarChart3D("�����������л��������͹��й�������", 
"type�����л��������͹��й�������", 
"amount11����", 
dataset, 
PlotOrientation.VERTICAL, 
false, 
false, 
false); 

TextTitle textTitle = chart.getTitle();
textTitle.setFont(new Font("����",Font.BOLD,15));

CategoryPlot plot=chart.getCategoryPlot();
CategoryAxis domainAxis=plot.getDomainAxis();
domainAxis.setLabelFont(new Font("����",Font.BOLD,15));
domainAxis.setTickLabelFont(new Font("����",Font.BOLD,15));
ValueAxis valueAxis=plot.getRangeAxis();
valueAxis.setLabelFont(new Font("����",Font.BOLD,15));

//chart.getLegend().setItemFont(new Font("����",Font.BOLD,15));

String filename = ServletUtilities.saveChartAsPNG(chart, 800, 400, null, session); 


String graphURL = request.getContextPath() + "/DisplayChart?filename=" + filename; 
System.out.println("graphURL:"+graphURL);

%> 

<img src="<%= graphURL %>" width=800 height=400 border=0 usemap="#<%= filename %>"> 

