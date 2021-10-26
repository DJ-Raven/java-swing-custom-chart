package chart;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import javax.swing.JLabel;
import javax.swing.border.EmptyBorder;

public class PolarAreaLabel extends JLabel {

    public PolarAreaLabel() {
        setBorder(new EmptyBorder(3, 25, 3, 3));
        setFont(getFont().deriveFont(0, 13));
        setForeground(new Color(100, 100, 100));
    }

    @Override
    public void paint(Graphics grphcs) {
        super.paint(grphcs);
        int size = getHeight() - 10;
        Graphics2D g2 = (Graphics2D) grphcs;
        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        int y = (getHeight() - size) / 2;
        g2.setColor(getBackground());
        g2.fillOval(3, y, size, size);
        g2.dispose();
    }
}
