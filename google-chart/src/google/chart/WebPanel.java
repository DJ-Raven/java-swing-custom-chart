package google.chart;

import java.awt.BorderLayout;
import java.awt.Color;
import javafx.application.Platform;
import javafx.embed.swing.JFXPanel;
import javafx.scene.Scene;
import javafx.scene.web.WebView;
import javax.swing.JPanel;

public class WebPanel extends JPanel {

    private JFXPanel panel = new JFXPanel();
    private WebView webView;

    public WebPanel() {
        setBackground(Color.WHITE);
        add(panel, BorderLayout.CENTER);
    }

    public void load(String content) {
        Platform.runLater(new Runnable() {
            @Override
            public void run() {
                if (webView == null) {
                    webView = new WebView();
                    panel.setScene(new Scene(webView));
                }
                webView.getEngine().loadContent(content);
                repaint();
                revalidate();
            }
        });
    }
}
