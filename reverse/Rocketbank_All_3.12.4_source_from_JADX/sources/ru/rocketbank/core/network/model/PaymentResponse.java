package ru.rocketbank.core.network.model;

import java.util.List;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;

public class PaymentResponse extends GenericRequestResponseData {
    private double amount;
    private List<Field> fields;
    private int id;
    private String name;
    private int provider_id;

    public static class Field {
        private String name;
        private String value;

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

    public double getAmount() {
        return this.amount;
    }

    public void setAmount(int i) {
        this.amount = (double) i;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public List<Field> getFields() {
        return this.fields;
    }

    public void setFields(List<Field> list) {
        this.fields = list;
    }
}
