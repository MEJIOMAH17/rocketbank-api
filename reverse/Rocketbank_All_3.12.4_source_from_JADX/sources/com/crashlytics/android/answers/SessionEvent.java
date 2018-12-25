package com.crashlytics.android.answers;

import java.util.Map;

final class SessionEvent {
    public final Map<String, Object> customAttributes;
    public final String customType;
    public final Map<String, String> details;
    public final Map<String, Object> predefinedAttributes;
    public final String predefinedType;
    public final SessionEventMetadata sessionEventMetadata;
    private String stringRepresentation;
    public final long timestamp;
    public final Type type;

    static class Builder {
        Map<String, Object> customAttributes = null;
        String customType = null;
        Map<String, String> details = null;
        Map<String, Object> predefinedAttributes = null;
        String predefinedType = null;
        final long timestamp = System.currentTimeMillis();
        final Type type;

        public Builder(Type type) {
            this.type = type;
        }
    }

    enum Type {
        START,
        RESUME,
        PAUSE,
        STOP,
        CRASH,
        INSTALL,
        CUSTOM,
        PREDEFINED
    }

    private SessionEvent(SessionEventMetadata sessionEventMetadata, long j, Type type, Map<String, String> map, String str, Map<String, Object> map2, String str2, Map<String, Object> map3) {
        this.sessionEventMetadata = sessionEventMetadata;
        this.timestamp = j;
        this.type = type;
        this.details = map;
        this.customType = str;
        this.customAttributes = map2;
        this.predefinedType = str2;
        this.predefinedAttributes = map3;
    }

    public final String toString() {
        if (this.stringRepresentation == null) {
            StringBuilder stringBuilder = new StringBuilder("[");
            stringBuilder.append(getClass().getSimpleName());
            stringBuilder.append(": timestamp=");
            stringBuilder.append(this.timestamp);
            stringBuilder.append(", type=");
            stringBuilder.append(this.type);
            stringBuilder.append(", details=");
            stringBuilder.append(this.details);
            stringBuilder.append(", customType=");
            stringBuilder.append(this.customType);
            stringBuilder.append(", customAttributes=");
            stringBuilder.append(this.customAttributes);
            stringBuilder.append(", predefinedType=");
            stringBuilder.append(this.predefinedType);
            stringBuilder.append(", predefinedAttributes=");
            stringBuilder.append(this.predefinedAttributes);
            stringBuilder.append(", metadata=[");
            stringBuilder.append(this.sessionEventMetadata);
            stringBuilder.append("]]");
            this.stringRepresentation = stringBuilder.toString();
        }
        return this.stringRepresentation;
    }
}
