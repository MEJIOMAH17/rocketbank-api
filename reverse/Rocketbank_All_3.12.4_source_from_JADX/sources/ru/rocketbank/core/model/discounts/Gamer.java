package ru.rocketbank.core.model.discounts;

import com.google.gson.annotations.SerializedName;

public class Gamer implements Comparable<Gamer> {
    public GamerMerchant merchant;
    public int percent;

    public static class GamerMerchant {
        public String android;
        @SerializedName("cool_big")
        public String coolBig;
        @SerializedName("iphone_big")
        public String iphoneBig;
    }

    public int compareTo(Gamer gamer) {
        return gamer.percent - this.percent;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            if (getClass() == obj.getClass()) {
                Gamer gamer = (Gamer) obj;
                if (this.percent != gamer.percent) {
                    return false;
                }
                if (this.merchant != null) {
                    return this.merchant.equals(gamer.merchant);
                }
                return gamer.merchant == null;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.merchant != null ? this.merchant.hashCode() : 0) * 31) + this.percent;
    }
}
