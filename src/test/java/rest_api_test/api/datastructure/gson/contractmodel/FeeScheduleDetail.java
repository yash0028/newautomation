
package rest_api_test.api.datastructure.gson.contractmodel;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class FeeScheduleDetail {

    @Expose
    private String contractOrPackage;
    @Expose
    private String effectiveDate;
    @Expose
    private String feeSchedule;
    @Expose
    private String marketDivRegion;
    @Expose
    private String system;

    public String getContractOrPackage() {
        return contractOrPackage;
    }

    public String getEffectiveDate() {
        return effectiveDate;
    }

    public String getFeeSchedule() {
        return feeSchedule;
    }

    public String getMarketDivRegion() {
        return marketDivRegion;
    }

    public String getSystem() {
        return system;
    }

    public static class Builder {

        private String contractOrPackage;
        private String effectiveDate;
        private String feeSchedule;
        private String marketDivRegion;
        private String system;

        public FeeScheduleDetail.Builder withContractOrPackage(String contractOrPackage) {
            this.contractOrPackage = contractOrPackage;
            return this;
        }

        public FeeScheduleDetail.Builder withEffectiveDate(String effectiveDate) {
            this.effectiveDate = effectiveDate;
            return this;
        }

        public FeeScheduleDetail.Builder withFeeSchedule(String feeSchedule) {
            this.feeSchedule = feeSchedule;
            return this;
        }

        public FeeScheduleDetail.Builder withMarketDivRegion(String marketDivRegion) {
            this.marketDivRegion = marketDivRegion;
            return this;
        }

        public FeeScheduleDetail.Builder withSystem(String system) {
            this.system = system;
            return this;
        }

        public FeeScheduleDetail build() {
            FeeScheduleDetail feeScheduleDetail = new FeeScheduleDetail();
            feeScheduleDetail.contractOrPackage = contractOrPackage;
            feeScheduleDetail.effectiveDate = effectiveDate;
            feeScheduleDetail.feeSchedule = feeSchedule;
            feeScheduleDetail.marketDivRegion = marketDivRegion;
            feeScheduleDetail.system = system;
            return feeScheduleDetail;
        }

    }

}
