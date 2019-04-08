
package rest_api_test.api.datastructure.gson.contractmodel;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class FeeScheduleRate {

    @Expose
    private String feeSchedule;
    @Expose
    private String feeScheduleProperty;
    @Expose
    private String rateConditionCategory;
    @Expose
    private String rateConditionCode;
    @Expose
    private String rateConditionDesc;

    public String getFeeSchedule() {
        return feeSchedule;
    }

    public String getFeeScheduleProperty() {
        return feeScheduleProperty;
    }

    public String getRateConditionCategory() {
        return rateConditionCategory;
    }

    public String getRateConditionCode() {
        return rateConditionCode;
    }

    public String getRateConditionDesc() {
        return rateConditionDesc;
    }

    public static class Builder {

        private String feeSchedule;
        private String feeScheduleProperty;
        private String rateConditionCategory;
        private String rateConditionCode;
        private String rateConditionDesc;

        public FeeScheduleRate.Builder withFeeSchedule(String feeSchedule) {
            this.feeSchedule = feeSchedule;
            return this;
        }

        public FeeScheduleRate.Builder withFeeScheduleProperty(String feeScheduleProperty) {
            this.feeScheduleProperty = feeScheduleProperty;
            return this;
        }

        public FeeScheduleRate.Builder withRateConditionCategory(String rateConditionCategory) {
            this.rateConditionCategory = rateConditionCategory;
            return this;
        }

        public FeeScheduleRate.Builder withRateConditionCode(String rateConditionCode) {
            this.rateConditionCode = rateConditionCode;
            return this;
        }

        public FeeScheduleRate.Builder withRateConditionDesc(String rateConditionDesc) {
            this.rateConditionDesc = rateConditionDesc;
            return this;
        }

        public FeeScheduleRate build() {
            FeeScheduleRate feeScheduleRate = new FeeScheduleRate();
            feeScheduleRate.feeSchedule = feeSchedule;
            feeScheduleRate.feeScheduleProperty = feeScheduleProperty;
            feeScheduleRate.rateConditionCategory = rateConditionCategory;
            feeScheduleRate.rateConditionCode = rateConditionCode;
            feeScheduleRate.rateConditionDesc = rateConditionDesc;
            return feeScheduleRate;
        }

    }

}
