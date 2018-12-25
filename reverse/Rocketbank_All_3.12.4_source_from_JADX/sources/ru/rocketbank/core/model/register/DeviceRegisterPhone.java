package ru.rocketbank.core.model.register;

public class DeviceRegisterPhone {
    private String phone;

    public DeviceRegisterPhone(String str) {
        this.phone = str;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String str) {
        this.phone = str;
    }
}
