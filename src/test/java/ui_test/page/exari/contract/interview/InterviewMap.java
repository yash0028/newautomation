package ui_test.page.exari.contract.interview;

import java.util.HashMap;

public class InterviewMap extends HashMap<String, InterviewItem> {

    public void put(InterviewItem item) {
        this.put(item.getQuestion(), item);
    }
}
