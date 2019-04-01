
package rest_api_test.util.datastructure.gson.contractmodel;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class SiteInfo {

    @Expose
    private String shortName;
    @Expose
    private String sitePreset;
    @Expose
    private String siteTemplate;
    @Expose
    private String title;

    public String getShortName() {
        return shortName;
    }

    public String getSitePreset() {
        return sitePreset;
    }

    public String getSiteTemplate() {
        return siteTemplate;
    }

    public String getTitle() {
        return title;
    }

    public static class Builder {

        private String shortName;
        private String sitePreset;
        private String siteTemplate;
        private String title;

        public SiteInfo.Builder withShortName(String shortName) {
            this.shortName = shortName;
            return this;
        }

        public SiteInfo.Builder withSitePreset(String sitePreset) {
            this.sitePreset = sitePreset;
            return this;
        }

        public SiteInfo.Builder withSiteTemplate(String siteTemplate) {
            this.siteTemplate = siteTemplate;
            return this;
        }

        public SiteInfo.Builder withTitle(String title) {
            this.title = title;
            return this;
        }

        public SiteInfo build() {
            SiteInfo siteInfo = new SiteInfo();
            siteInfo.shortName = shortName;
            siteInfo.sitePreset = sitePreset;
            siteInfo.siteTemplate = siteTemplate;
            siteInfo.title = title;
            return siteInfo;
        }

    }

}
