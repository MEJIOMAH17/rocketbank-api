package io.realm;

import io.realm.internal.Table;
import io.realm.internal.fields.FieldDescriptor;

public abstract class RealmObjectSchema {
    private final RealmSchema schema;

    abstract RealmObjectSchema add(String str, RealmFieldType realmFieldType, RealmObjectSchema realmObjectSchema);

    abstract RealmObjectSchema add(String str, RealmFieldType realmFieldType, boolean z, boolean z2, boolean z3);

    abstract long getAndCheckFieldIndex(String str);

    public abstract String getClassName();

    abstract Table getTable();

    protected RealmObjectSchema(RealmSchema realmSchema) {
        this.schema = realmSchema;
    }

    protected final FieldDescriptor getColumnIndices(String str, RealmFieldType... realmFieldTypeArr) {
        return FieldDescriptor.createStandardFieldDescriptor(new SchemaConnector(this.schema), getTable(), str, realmFieldTypeArr);
    }
}
