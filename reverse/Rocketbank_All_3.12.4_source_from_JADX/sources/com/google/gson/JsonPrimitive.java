package com.google.gson;

import com.google.gson.internal.LazilyParsedNumber;
import java.math.BigInteger;

public final class JsonPrimitive extends JsonElement {
    private static final Class<?>[] PRIMITIVE_TYPES = new Class[]{Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};
    private Object value;

    public JsonPrimitive(Boolean bool) {
        setValue(bool);
    }

    public JsonPrimitive(Number number) {
        setValue(number);
    }

    public JsonPrimitive(String str) {
        setValue(str);
    }

    private void setValue(Object obj) {
        if (obj instanceof Character) {
            this.value = String.valueOf(((Character) obj).charValue());
            return;
        }
        Object obj2;
        if (!(obj instanceof Number)) {
            if (!isPrimitiveOrString(obj)) {
                obj2 = null;
                if (obj2 != null) {
                    throw new IllegalArgumentException();
                }
                this.value = obj;
                return;
            }
        }
        obj2 = 1;
        if (obj2 != null) {
            this.value = obj;
            return;
        }
        throw new IllegalArgumentException();
    }

    public final boolean isBoolean() {
        return this.value instanceof Boolean;
    }

    public final boolean isNumber() {
        return this.value instanceof Number;
    }

    public final Number getAsNumber() {
        return this.value instanceof String ? new LazilyParsedNumber((String) this.value) : (Number) this.value;
    }

    public final boolean isString() {
        return this.value instanceof String;
    }

    private static boolean isPrimitiveOrString(Object obj) {
        if (obj instanceof String) {
            return true;
        }
        obj = obj.getClass();
        Class[] clsArr = PRIMITIVE_TYPES;
        for (int i = 0; i < 16; i++) {
            if (clsArr[i].isAssignableFrom(obj)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.value == null) {
            return 31;
        }
        long longValue;
        if (isIntegral(this)) {
            longValue = getAsNumber().longValue();
            return (int) (longValue ^ (longValue >>> 32));
        } else if (!(this.value instanceof Number)) {
            return this.value.hashCode();
        } else {
            longValue = Double.doubleToLongBits(getAsNumber().doubleValue());
            return (int) (longValue ^ (longValue >>> 32));
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            if (getClass() == obj.getClass()) {
                JsonPrimitive jsonPrimitive = (JsonPrimitive) obj;
                if (this.value == null) {
                    return jsonPrimitive.value == null;
                } else {
                    if (isIntegral(this) && isIntegral(jsonPrimitive)) {
                        return getAsNumber().longValue() == jsonPrimitive.getAsNumber().longValue();
                    } else {
                        if (!(this.value instanceof Number) || !(jsonPrimitive.value instanceof Number)) {
                            return this.value.equals(jsonPrimitive.value);
                        }
                        double doubleValue = getAsNumber().doubleValue();
                        double doubleValue2 = jsonPrimitive.getAsNumber().doubleValue();
                        if (doubleValue != doubleValue2) {
                            if (Double.isNaN(doubleValue) == null || Double.isNaN(doubleValue2) == null) {
                                return false;
                            }
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private static boolean isIntegral(JsonPrimitive jsonPrimitive) {
        if (!(jsonPrimitive.value instanceof Number)) {
            return false;
        }
        Number number = (Number) jsonPrimitive.value;
        if (!((number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short))) {
            if ((number instanceof Byte) == null) {
                return false;
            }
        }
        return true;
    }

    public final boolean getAsBoolean() {
        if (this.value instanceof Boolean) {
            return ((Boolean) this.value).booleanValue();
        }
        return Boolean.parseBoolean(getAsString());
    }

    public final String getAsString() {
        if (this.value instanceof Number) {
            return getAsNumber().toString();
        }
        if (this.value instanceof Boolean) {
            return ((Boolean) this.value).toString();
        }
        return (String) this.value;
    }

    public final double getAsDouble() {
        return this.value instanceof Number ? getAsNumber().doubleValue() : Double.parseDouble(getAsString());
    }

    public final long getAsLong() {
        return this.value instanceof Number ? getAsNumber().longValue() : Long.parseLong(getAsString());
    }

    public final int getAsInt() {
        return this.value instanceof Number ? getAsNumber().intValue() : Integer.parseInt(getAsString());
    }
}
