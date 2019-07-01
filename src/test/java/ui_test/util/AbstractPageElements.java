package ui_test.util;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class AbstractPageElements {
    public static final int TIMEOUT = 90;
    private static final Logger log = LoggerFactory.getLogger(AbstractPageElements.class);

    private SearchContext context;


    public AbstractPageElements(SearchContext context) {
        this.context = context;
        relocateFactory();
    }

    /**
     * Initilize elements using AjaxElementLocatorFactory in the original search context and default timeout
     */
    public void relocateFactory() {
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(context, TIMEOUT);
        PageFactory.initElements(factory, this);
    }

    /**
     * Initilize elements using AjaxElementLocatorFactory in the original search context and custom timeout
     */
    public void relocateFactory(int customTimeout) {
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(context, customTimeout);
        PageFactory.initElements(factory, this);
    }

    /**
     * Initilize elements using AjaxElementLocatorFactory in the custom search context and default timeout
     */
    public void relocateFactory(SearchContext newSearchContext) {
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(newSearchContext, TIMEOUT);
        PageFactory.initElements(factory, this);
    }

    /**
     * Initilize elements using AjaxElementLocatorFactory in the custom search context and custom timeout
     */
    public void relocateFactory(SearchContext myContext, int myTimeout) {
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(myContext, myTimeout);
        PageFactory.initElements(factory, this);
    }
}
