package ru.rocketbank.core.model.transfers;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.List;
import ru.rocketbank.core.model.card.LinkedCard;

public final class Template implements Serializable {
    public double amount;
    @SerializedName("card2card_transfer")
    public Card2Card card2Card;
    @SerializedName("corporate_remittance")
    public Remittance corporateRemittance;
    public int id;
    @SerializedName("individual_remittance")
    public Remittance individualRemittance;
    @SerializedName("internal_transfer")
    public InternalTransfer internalTransfer;
    @SerializedName("provider_payment")
    public ProviderPayment provider;
    public String title;

    public class Card2Card implements Serializable {
        @SerializedName("amount")
        public float amount;
        @SerializedName("linked_card")
        public LinkedCard linkedCard;
    }

    public class InternalTransfer implements Serializable {
        @SerializedName("friend")
        public Friend friend;

        public class Friend implements Serializable {
            @SerializedName("email")
            public String email;
            @SerializedName("first_name")
            public String firstName;
            @SerializedName("id")
            public int id;
            @SerializedName("last_name")
            public String lastName;
            @SerializedName("mobile_phone")
            public String mobilePhone;
            @SerializedName("userpic_url")
            public String userpicUrl;
        }
    }

    public static class ProviderPayment implements Serializable {
        private List<FieldPayment> fields;
        private int provider_id;

        public static class FieldPayment implements Serializable {
            private String name;
            private String value;

            public FieldPayment(String str, String str2) {
                this.name = str;
                this.value = str2;
            }

            public String getName() {
                return this.name;
            }

            public void setName(String str) {
                this.name = str;
            }

            public String getValue() {
                return this.value;
            }

            public void setValue(String str) {
                this.value = str;
            }
        }

        public int getProvider_id() {
            return this.provider_id;
        }

        public void setProvider_id(int i) {
            this.provider_id = i;
        }

        public List<FieldPayment> getFields() {
            return this.fields;
        }

        public String toStringFields() {
            String str = "";
            for (FieldPayment fieldPayment : getFields()) {
                StringBuilder stringBuilder;
                if (!str.isEmpty()) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(str);
                    stringBuilder.append(", ");
                    str = stringBuilder.toString();
                }
                stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append(fieldPayment.getValue());
                str = stringBuilder.toString();
            }
            return str;
        }

        public void setFields(List<FieldPayment> list) {
            this.fields = list;
        }
    }

    public class Remittance implements Serializable {
        @SerializedName("amount")
        public float amount;
        @SerializedName("bank_name")
        public String bankName;
        @SerializedName("bik")
        public String bik;
        @SerializedName("corr_bank")
        public String corrBank;
        @SerializedName("corr_number")
        public String corrNumber;
        @SerializedName("icon_url")
        public String iconUrl;
        @SerializedName("inn")
        public String inn;
        @SerializedName("kpp")
        public String kpp;
        @SerializedName("nds")
        public boolean nds;
        @SerializedName("purpose")
        public String purpose;
        @SerializedName("recipient_name")
        public String recipientName;
    }

    public final boolean equals(Object obj) {
        return (obj != null && (obj instanceof Template) && ((Template) obj).id == this.id) ? true : null;
    }
}
