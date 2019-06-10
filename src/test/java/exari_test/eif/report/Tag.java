
package exari_test.eif.report;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class Tag {

    @Expose
    private int line;
    @Expose
    private String name;

    public int getLine() {
        return line;
    }

    public String getName() {
        return name;
    }

    public static class Builder {

        private int line;
        private String name;

        public Tag.Builder withLine(int line) {
            this.line = line;
            return this;
        }

        public Tag.Builder withName(String name) {
            this.name = name;
            return this;
        }

        public Tag build() {
            Tag tag = new Tag();
            tag.line = line;
            tag.name = name;
            return tag;
        }

    }

}
