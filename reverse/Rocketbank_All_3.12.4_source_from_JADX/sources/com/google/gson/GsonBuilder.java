package com.google.gson;

import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class GsonBuilder {
    private boolean complexMapKeySerialization = false;
    private int dateStyle = 2;
    private boolean escapeHtmlChars = true;
    private Excluder excluder = Excluder.DEFAULT;
    private final List<TypeAdapterFactory> factories = new ArrayList();
    private FieldNamingStrategy fieldNamingPolicy = FieldNamingPolicy.IDENTITY;
    private boolean generateNonExecutableJson = false;
    private final List<TypeAdapterFactory> hierarchyFactories = new ArrayList();
    private final Map<Type, InstanceCreator<?>> instanceCreators = new HashMap();
    private boolean lenient = false;
    private LongSerializationPolicy longSerializationPolicy = LongSerializationPolicy.DEFAULT;
    private boolean prettyPrinting = false;
    private boolean serializeNulls = false;
    private boolean serializeSpecialFloatingPointValues = false;
    private int timeStyle = 2;

    public final GsonBuilder registerTypeAdapter(Type type, Object obj) {
        Object obj2;
        boolean z = obj instanceof JsonSerializer;
        if (!(z || (obj instanceof JsonDeserializer) || (obj instanceof InstanceCreator))) {
            if (!(obj instanceof TypeAdapter)) {
                obj2 = null;
                if (obj2 != null) {
                    throw new IllegalArgumentException();
                }
                if (obj instanceof InstanceCreator) {
                    this.instanceCreators.put(type, (InstanceCreator) obj);
                }
                if (z || (obj instanceof JsonDeserializer)) {
                    this.factories.add(TreeTypeAdapter.newFactoryWithMatchRawType(TypeToken.get(type), obj));
                }
                if (obj instanceof TypeAdapter) {
                    this.factories.add(TypeAdapters.newFactory(TypeToken.get(type), (TypeAdapter) obj));
                }
                return this;
            }
        }
        obj2 = 1;
        if (obj2 != null) {
            if (obj instanceof InstanceCreator) {
                this.instanceCreators.put(type, (InstanceCreator) obj);
            }
            this.factories.add(TreeTypeAdapter.newFactoryWithMatchRawType(TypeToken.get(type), obj));
            if (obj instanceof TypeAdapter) {
                this.factories.add(TypeAdapters.newFactory(TypeToken.get(type), (TypeAdapter) obj));
            }
            return this;
        }
        throw new IllegalArgumentException();
    }

    public final Gson create() {
        List arrayList = new ArrayList((this.factories.size() + this.hierarchyFactories.size()) + 3);
        arrayList.addAll(this.factories);
        Collections.reverse(arrayList);
        Collection arrayList2 = new ArrayList(this.hierarchyFactories);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        int i = this.dateStyle;
        int i2 = this.timeStyle;
        if (!(i == 2 || i2 == 2)) {
            TypeAdapter defaultDateTypeAdapter = new DefaultDateTypeAdapter(Date.class, i, i2);
            TypeAdapter defaultDateTypeAdapter2 = new DefaultDateTypeAdapter(Timestamp.class, i, i2);
            TypeAdapter defaultDateTypeAdapter3 = new DefaultDateTypeAdapter(java.sql.Date.class, i, i2);
            arrayList.add(TypeAdapters.newFactory(Date.class, defaultDateTypeAdapter));
            arrayList.add(TypeAdapters.newFactory(Timestamp.class, defaultDateTypeAdapter2));
            arrayList.add(TypeAdapters.newFactory(java.sql.Date.class, defaultDateTypeAdapter3));
        }
        return new Gson(this.excluder, this.fieldNamingPolicy, this.instanceCreators, this.escapeHtmlChars, this.longSerializationPolicy, arrayList);
    }
}
