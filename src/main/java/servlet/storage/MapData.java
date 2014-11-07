package servlet.storage;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MapData extends SimpleTagSupport {
    private java.util.Map<?, ?> map;
    private String data;

    @Override
    public void doTag() throws JspException, IOException {

        for (java.util.Map.Entry<?, ?> m : map.entrySet()) {
            getJspContext().setAttribute(data, m);
            getJspBody().invoke(null);
        }
    }

    /**
     * @param data the data to set
     */
    public void setData(String data) {
        this.data = data;
    }

    /**
     * @param map the map to set
     */
    public void setMap(java.util.Map<?, ?> map) {
        this.map = map;
    }
}
