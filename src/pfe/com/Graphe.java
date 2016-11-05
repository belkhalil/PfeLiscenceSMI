package pfe.com;

import java.awt.BasicStroke;
import java.awt.Color;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;

public class Graphe {
	public JFreeChart makharej_g(int a,int b,int c) {
		/*DefaultPieDataset dataset = new DefaultPieDataset();
		dataset.setValue("شفوي", a);
		dataset.setValue("حلقي", b);
		dataset.setValue("لساني", c);

		boolean legend = true;
		boolean tooltips = false;
		boolean urls = false;

		JFreeChart chart = ChartFactory.createPieChart3D("تقسيم الحروف حسب المخارج", dataset, legend, tooltips, urls);
		
		chart.setBorderPaint(Color.blue);
		chart.setBorderStroke(new BasicStroke(5.0f));
		chart.setBorderVisible(true);*/
		DefaultCategoryDataset dataset = new DefaultCategoryDataset();
		dataset.addValue(a, "شفوي", "شفوي");
		dataset.addValue(b, "حلقي", "حلقي");
		dataset.addValue(c, "لساني", "لساني");

		 
		JFreeChart barChart = ChartFactory.createBarChart("تقسيم الحروف حسب المخارج", "",
		"", dataset, PlotOrientation.VERTICAL, true, true, false); 

		return barChart;
	}
	/********************************************************************************************/
	public JFreeChart mahmous_g(int a,int b,int c) {
		/* DefaultPieDataset dataset = new DefaultPieDataset();
		dataset.setValue("لين", a);
		dataset.setValue("مهموس", b);
		dataset.setValue("مجهور", c);
		
		boolean legend = true;
		boolean tooltips = false;
		boolean urls = false;

		JFreeChart chart = ChartFactory.createPieChart3D("المهموس/المجهور/اللين", dataset, legend, tooltips, urls);
      
		chart.setBorderPaint(Color.green);
		chart.setBorderStroke(new BasicStroke(5.0f));
		chart.setBorderVisible(true);*/
		DefaultCategoryDataset dataset = new DefaultCategoryDataset();
		
		dataset.addValue(a, "لين", "لين");
		dataset.addValue(b, "مهموس", "مهموس");
		dataset.addValue(c, "مجهور", "مجهور");
		
		
	 
		JFreeChart barChart = ChartFactory.createBarChart3D("المهموس/المجهور/اللين", "","", dataset, PlotOrientation.VERTICAL, true, true, false); 

		return barChart;

		
	}
	/*********************************************************************************************************/
	public JFreeChart safir_g(float a,float b) {
		DefaultPieDataset dataset = new DefaultPieDataset();
		dataset.setValue("نسبة حروف الصفير", a);
		dataset.setValue("نسبة باقي الحروف", b);
		
		
		boolean legend = true;
		boolean tooltips = false;
		boolean urls = false;

		JFreeChart chart = ChartFactory.createPieChart("نسبة حروف الصفير بين باقي الحروف", dataset, legend, tooltips, urls);
      
		chart.setBorderPaint(Color.blue);
		chart.setBorderStroke(new BasicStroke(5.0f));
		chart.setBorderVisible(true);

		return chart;
	}
	/***********************************************************************************************************/
	public JFreeChart chafawi_g(float a,float b) {
		DefaultPieDataset dataset = new DefaultPieDataset();
		dataset.setValue("نسبة الحروف الشفوية", a);
		dataset.setValue("نسبة باقي الحروف", b);
		
		boolean legend = true;
		boolean tooltips = false;
		boolean urls = false;

		JFreeChart chart = ChartFactory.createPieChart3D("نسبة الحروف الشفوية بين باقي الحروف", dataset, legend, tooltips, urls);
      
		chart.setBorderPaint(Color.gray);
		chart.setBorderStroke(new BasicStroke(5.0f));
		chart.setBorderVisible(true);

		return chart;
	}
	/**************************************************************************************************************/
	public JFreeChart chin_g(float a,float b) {
		DefaultPieDataset dataset = new DefaultPieDataset();
		dataset.setValue("نسبة حروف الشين", a);
		dataset.setValue("نسبة باقي الحروف", b);
		
		boolean legend = true;
		boolean tooltips = false;
		boolean urls = false;

		JFreeChart chart = ChartFactory.createPieChart3D("نسبة حروف الشين بين باقي الحروف", dataset, legend, tooltips, urls);
      
		chart.setBorderPaint(Color.red);
		chart.setBorderStroke(new BasicStroke(5.0f));
		chart.setBorderVisible(true);

		return chart;
	}
	/*************************************************************************************************************************/
	public JFreeChart cheda_g(int a,int b,int c,int d) {
		DefaultPieDataset dataset = new DefaultPieDataset();
		dataset.setValue("الشديدة", a);
		dataset.setValue("الشبه لينة", b);
		dataset.setValue("المتوسطة", c);
		dataset.setValue("الرخوة", d);
		boolean legend = true;
		boolean tooltips = false;
		boolean urls = false;

		 JFreeChart chart = ChartFactory.createPieChart("تقسيم الحروف حسب الشدة", dataset, legend, tooltips, urls);
	
		chart.setBorderPaint(Color.yellow);
		chart.setBorderStroke(new BasicStroke(5.0f));
		chart.setBorderVisible(true);

		return chart;
	}
	public Graphe() {
		super();
		// TODO Auto-generated constructor stub
	}

}
