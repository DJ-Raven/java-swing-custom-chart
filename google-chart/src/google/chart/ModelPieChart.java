package google.chart;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.StringJoiner;

public class ModelPieChart {

    private String title;
    private List<Data> model = new ArrayList<>();

    public ModelPieChart(String title) {
        this.title = title;
    }

    public void addData(String title, double value) {
        model.add(new Data(title, value));
    }

    public String toChartContent() {
        String jsPath = new File("chart.js").getAbsolutePath();
        String text = "<html>\n"
                + "  <head>\n"
                + "    <script type=\"text/javascript\" src=\"file:///" + jsPath + "\"></script>\n"
                + "    <script type=\"text/javascript\">\n"
                + "      google.charts.load(\"current\", {packages:[\"corechart\"]});\n"
                + "      google.charts.setOnLoadCallback(drawChart);\n"
                + "      function drawChart() {\n"
                + "        var data = google.visualization.arrayToDataTable([\n"
                + "          ['Task', 'Hours per Day'],\n"
                + getModel()
                + "        ]);\n"
                + "\n"
                + "        var options = {\n"
                + "          title: '" + title + "',\n"
                + "          is3D: true,\n"
                + "        };\n"
                + "\n"
                + "        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));\n"
                + "        chart.draw(data, options);\n"
                + "      }\n"
                + "    </script>\n"
                + "  </head>\n"
                + "  <body>\n"
                + "    <div id=\"piechart_3d\" style=\"width: 750px; height: 500px; margin-left: auto;\"></div>\n"
                + "  </body>\n"
                + "</html>";
        return text;
    }

    private String getModel() {
        StringJoiner st = new StringJoiner(",");
        for (Data d : model) {
            st.add("['" + d.getTitle() + "'," + d.getValues() + "]");
        }
        return st.toString();
    }

    private class Data {

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public double getValues() {
            return values;
        }

        public void setValues(double values) {
            this.values = values;
        }

        public Data(String title, double values) {
            this.title = title;
            this.values = values;
        }

        public Data() {
        }

        private String title;
        private double values;
    }
}
