package io.realm;

import io.realm.internal.Table;
import io.realm.internal.Util;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

final class StandardRealmSchema extends RealmSchema {
    private final Map<Class<? extends RealmModel>, StandardRealmObjectSchema> classToSchema = new HashMap();
    private final Map<Class<? extends RealmModel>, Table> classToTable = new HashMap();
    private final Map<String, StandardRealmObjectSchema> dynamicClassToSchema = new HashMap();
    private final Map<String, Table> dynamicClassToTable = new HashMap();
    private final BaseRealm realm;

    public final void close() {
    }

    StandardRealmSchema(BaseRealm baseRealm) {
        this.realm = baseRealm;
    }

    public final Set<RealmObjectSchema> getAll() {
        int size = (int) this.realm.getSharedRealm().size();
        Set<RealmObjectSchema> linkedHashSet = new LinkedHashSet(size);
        for (int i = 0; i < size; i++) {
            String tableName = this.realm.getSharedRealm().getTableName(i);
            if (Table.isModelTable(tableName)) {
                linkedHashSet.add(new StandardRealmObjectSchema(this.realm, this, this.realm.getSharedRealm().getTable(tableName)));
            }
        }
        return linkedHashSet;
    }

    public final boolean contains(String str) {
        return this.realm.getSharedRealm().hasTable(Table.getTableNameForClass(str));
    }

    final Table getTable(String str) {
        str = Table.getTableNameForClass(str);
        Table table = (Table) this.dynamicClassToTable.get(str);
        if (table != null) {
            return table;
        }
        table = this.realm.getSharedRealm().getTable(str);
        this.dynamicClassToTable.put(str, table);
        return table;
    }

    final Table getTable(Class<? extends RealmModel> cls) {
        Table table = (Table) this.classToTable.get(cls);
        if (table != null) {
            return table;
        }
        Class originalModelClass = Util.getOriginalModelClass(cls);
        if (originalModelClass.equals(cls)) {
            table = (Table) this.classToTable.get(originalModelClass);
        }
        if (table == null) {
            table = this.realm.getSharedRealm().getTable(this.realm.getConfiguration().getSchemaMediator().getTableName(originalModelClass));
            this.classToTable.put(originalModelClass, table);
        }
        if (originalModelClass.equals(cls)) {
            this.classToTable.put(cls, table);
        }
        return table;
    }

    public final RealmObjectSchema get(String str) {
        String str2 = "Null or empty class names are not allowed";
        if (str.isEmpty()) {
            throw new IllegalArgumentException(str2);
        }
        str = Table.getTableNameForClass(str);
        if (!this.realm.getSharedRealm().hasTable(str)) {
            return null;
        }
        return new StandardRealmObjectSchema(this.realm, this, this.realm.getSharedRealm().getTable(str));
    }

    public final RealmObjectSchema create(String str) {
        String str2 = "Null or empty class names are not allowed";
        if (str.isEmpty()) {
            throw new IllegalArgumentException(str2);
        }
        str2 = Table.getTableNameForClass(str);
        if (str2.length() <= 56) {
            return new StandardRealmObjectSchema(this.realm, this, this.realm.getSharedRealm().createTable(str2));
        }
        StringBuilder stringBuilder = new StringBuilder("Class name is too long. Limit is 56 characters: ");
        stringBuilder.append(str.length());
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    final /* bridge */ /* synthetic */ RealmObjectSchema getSchemaForClass(Class cls) {
        RealmObjectSchema realmObjectSchema = (StandardRealmObjectSchema) this.classToSchema.get(cls);
        if (realmObjectSchema == null) {
            Class originalModelClass = Util.getOriginalModelClass(cls);
            if (originalModelClass.equals(cls)) {
                realmObjectSchema = (StandardRealmObjectSchema) this.classToSchema.get(originalModelClass);
            }
            if (realmObjectSchema == null) {
                RealmObjectSchema standardRealmObjectSchema = new StandardRealmObjectSchema(this.realm, this, getTable(cls), getColumnInfo(originalModelClass));
                this.classToSchema.put(originalModelClass, standardRealmObjectSchema);
                realmObjectSchema = standardRealmObjectSchema;
            }
            if (originalModelClass.equals(cls)) {
                this.classToSchema.put(cls, realmObjectSchema);
            }
        }
        return realmObjectSchema;
    }
}
