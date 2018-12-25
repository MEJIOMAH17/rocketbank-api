package io.realm;

import io.realm.internal.ColumnIndices;
import io.realm.internal.ColumnInfo;
import io.realm.internal.Table;
import io.realm.internal.util.Pair;
import java.util.Map;
import java.util.Set;

public abstract class RealmSchema {
    private ColumnIndices columnIndices;

    public abstract void close();

    public abstract boolean contains(String str);

    public abstract RealmObjectSchema create(String str);

    public abstract RealmObjectSchema get(String str);

    public abstract Set<RealmObjectSchema> getAll();

    abstract RealmObjectSchema getSchemaForClass(Class<? extends RealmModel> cls);

    abstract Table getTable(Class<? extends RealmModel> cls);

    abstract Table getTable(String str);

    final void setInitialColumnIndices(ColumnIndices columnIndices) {
        if (this.columnIndices != null) {
            throw new IllegalStateException("An instance of ColumnIndices is already set.");
        }
        this.columnIndices = new ColumnIndices(columnIndices, true);
    }

    final void setInitialColumnIndices(long j, Map<Pair<Class<? extends RealmModel>, String>, ColumnInfo> map) {
        if (this.columnIndices != null) {
            throw new IllegalStateException("An instance of ColumnIndices is already set.");
        }
        this.columnIndices = new ColumnIndices(j, (Map) map);
    }

    final void updateColumnIndices(ColumnIndices columnIndices) {
        this.columnIndices.copyFrom(columnIndices);
    }

    final boolean haveColumnInfo() {
        return this.columnIndices != null;
    }

    final ColumnIndices getImmutableColumnIndicies() {
        if (this.columnIndices != null) {
            return new ColumnIndices(this.columnIndices, false);
        }
        throw new IllegalStateException("Attempt to use column index before set.");
    }

    final long getSchemaVersion() {
        if ((this.columnIndices != null ? 1 : null) != null) {
            return this.columnIndices.getSchemaVersion();
        }
        throw new IllegalStateException("Attempt to use column index before set.");
    }

    final ColumnInfo getColumnInfo(Class<? extends RealmModel> cls) {
        if ((this.columnIndices != null ? 1 : null) != null) {
            return this.columnIndices.getColumnInfo((Class) cls);
        }
        throw new IllegalStateException("Attempt to use column index before set.");
    }

    protected final ColumnInfo getColumnInfo(String str) {
        if ((this.columnIndices != null ? 1 : null) != null) {
            return this.columnIndices.getColumnInfo(str);
        }
        throw new IllegalStateException("Attempt to use column index before set.");
    }
}
