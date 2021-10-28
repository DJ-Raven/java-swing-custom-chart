package chart;

import java.awt.BorderLayout;
import java.awt.Dimension;
import javax.swing.JPanel;
import org.jfree.chart3d.Chart3D;
import org.jfree.chart3d.Chart3DFactory;
import org.jfree.chart3d.Chart3DPanel;
import org.jfree.chart3d.Colors;
import org.jfree.chart3d.Orientation;
import org.jfree.chart3d.data.category.CategoryDataset3D;
import org.jfree.chart3d.label.StandardCategoryItemLabelGenerator;
import org.jfree.chart3d.legend.LegendAnchor;
import org.jfree.chart3d.plot.CategoryPlot3D;

public class Chart3DCustom extends JPanel {

    public Chart3DCustom() {
        setLayout(new BorderLayout());
    }

    public void setDataset(CategoryDataset3D dataset, String title, String subTitle, String rowLabel, String columnLabel, String valuesLabel, ChartType type) {
        removeAll();
        Chart3D chart;
        if (type == ChartType.AREA_CHART) {
            chart = Chart3DFactory.createAreaChart(title, subTitle, dataset, rowLabel, columnLabel, valuesLabel);
        } else if (type == ChartType.BAR_CHART) {
            chart = Chart3DFactory.createBarChart(title, subTitle, dataset, rowLabel, columnLabel, valuesLabel);
        } else {
            chart = Chart3DFactory.createLineChart(title, subTitle, dataset, rowLabel, columnLabel, valuesLabel);
        }
        //  Change legend position
        chart.setLegendPosition(LegendAnchor.BOTTOM_RIGHT, Orientation.VERTICAL);
        chart.getViewPoint().panLeftRight(-Math.PI / 60);
        //  Change color style
        CategoryPlot3D plot = (CategoryPlot3D) chart.getPlot();
        plot.getRenderer().setColors(Colors.getDesignSeedsShells());
        Chart3DPanel panel = new Chart3DPanel(chart);
        panel.zoomToFit(new Dimension(getWidth(), getHeight()));
        plot.setToolTipGenerator(new StandardCategoryItemLabelGenerator("%2$s (%3$s) = %4$.0f"));
        add(panel);
        repaint();
        revalidate();
    }

    public static enum ChartType {
        AREA_CHART, BAR_CHART, LINE_CHART
    }
}
