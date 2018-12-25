package com.google.gson;

import com.google.gson.internal.LinkedTreeMap;
import java.util.Map.Entry;
import java.util.Set;

public final class JsonObject extends JsonElement {
    private final LinkedTreeMap<String, JsonElement> members = new LinkedTreeMap();

    public final void add(String str, JsonElement jsonElement) {
        if (jsonElement == null) {
            jsonElement = JsonNull.INSTANCE;
        }
        this.members.put(str, jsonElement);
    }

    public final Set<Entry<String, JsonElement>> entrySet() {
        return this.members.entrySet();
    }

    public final JsonElement get(String str) {
        return (JsonElement) this.members.get(str);
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof JsonObject) || ((JsonObject) obj).members.equals(this.members) == null) {
                return null;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.members.hashCode();
    }
}
