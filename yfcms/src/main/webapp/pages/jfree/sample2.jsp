<%@ page contentType="text/html;charset=GBK"%>

<%@ page import="org.jfree.chart.ChartFactory, 
org.jfree.chart.JFreeChart, 
org.jfree.chart.plot.PlotOrientation, 
org.jfree.chart.servlet.ServletUtilities, 
org.jfree.data.category.CategoryDataset, 
org.jfree.chart.ChartFactory, 
org.jfree.chart.JFreeChart, 
org.jfree.chart.plot.PlotOrientation, 
org.jfree.chart.servlet.ServletUtilities, 
org.jfree.data.category.DefaultCategoryDataset,
java.awt.*,
org.jfree.chart.plot.*,
org.jfree.chart.axis.*,
org.jfree.chart.title.TextTitle,
org.jfree.data.general.DatasetUtilities"%>

<% 
double[][] data = new double[][] {{1310}, {720}, {1130}, {440}, {440}, {440}, {440}, {440}, {440}}; 
String[] rowKeys = { "pig����", "beef����", "chicken����", "fish����", "fish11����" , "fish33����", "fish22����", "fish44����", "fish55����"};
String[] columnKeys = {""}; 
CategoryDataset dataset = DatasetUtilities.createCategoryDataset(rowKeys, columnKeys, data); 
JFreeChart chart = ChartFactory.createBarChart3D("������������ͳ��ͼ", 
"type����", 
"amount����", 
dataset, 
PlotOrientation.VERTICAL, 
true, 
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
chart.getLegend().setItemFont(new Font("����",Font.BOLD,15));


String filename = ServletUtilities.saveChartAsPNG(chart, 600, 400, null, session); 
String graphURL = request.getContextPath() + "/DisplayChart?filename=" + filename; 
%> 
<img src="<%= graphURL %>" width=600 height=400 border=0 usemap="#<%= filename %>"> 

