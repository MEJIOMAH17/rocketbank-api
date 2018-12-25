package ru.rocketbank.core.network.model;

import ru.rocketbank.core.model.dto.GenericRequestResponseData;

public class SmsVerificationPhoneResponse extends GenericRequestResponseData {
    private Phone phone;

    public static class Phone {
        private String formatted;
        private String number;
        private String operator;

        public String getNumber() {
            return this.number;
        }

        public String getFormatted() {
            return this.formatted;
        }

        public String getOperator() {
            return this.operator;
        }
    }

    public Phone getPhone() {
        return this.phone;
    }
}
