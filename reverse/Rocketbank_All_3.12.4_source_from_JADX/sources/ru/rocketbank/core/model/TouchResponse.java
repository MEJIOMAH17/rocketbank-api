package ru.rocketbank.core.model;

public class TouchResponse {
    public DeviceData device;
    public ResponseData response;

    public static class DeviceData {
        public String touch_id_token;
    }

    public static class ResponseData {
        public String code;
        public String description;
        public boolean show_it;
        public int status;
    }
}
