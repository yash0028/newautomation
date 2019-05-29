package exari_test.eif.interview;

import java.util.HashMap;

public class InterviewActionMap extends HashMap<String, InterviewAction> {

    public void put(InterviewAction item) {
        this.put(item.getQuestion(), item);
    }
}
