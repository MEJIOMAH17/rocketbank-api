package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public abstract class ColumnInfo {
    private final Map<String, ColumnDetails> indicesMap;
    private final boolean mutable;

    static final class ColumnDetails {
        public final long columnIndex;
        public final RealmFieldType columnType;
        public final String linkTable;

        ColumnDetails(long j, RealmFieldType realmFieldType, String str) {
            this.columnIndex = j;
            this.columnType = realmFieldType;
            this.linkTable = str;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("ColumnDetails[");
            stringBuilder.append(this.columnIndex);
            stringBuilder.append(", ");
            stringBuilder.append(this.columnType);
            stringBuilder.append(", ");
            stringBuilder.append(this.linkTable);
            stringBuilder.append("]");
            return stringBuilder.toString();
        }
    }

    protected abstract ColumnInfo copy(boolean z);

    protected abstract void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2);

    protected ColumnInfo(int i) {
        this(i, true);
    }

    protected ColumnInfo(ColumnInfo columnInfo, boolean z) {
        this(columnInfo == null ? 0 : columnInfo.indicesMap.size(), z);
        if (columnInfo != null) {
            this.indicesMap.putAll(columnInfo.indicesMap);
        }
    }

    private ColumnInfo(int i, boolean z) {
        this.indicesMap = new HashMap(i);
        this.mutable = z;
    }

    public final boolean isMutable() {
        return this.mutable;
    }

    public long getColumnIndex(String str) {
        ColumnDetails columnDetails = (ColumnDetails) this.indicesMap.get(str);
        if (columnDetails == null) {
            return -1;
        }
        return columnDetails.columnIndex;
    }

    public RealmFieldType getColumnType(String str) {
        ColumnDetails columnDetails = (ColumnDetails) this.indicesMap.get(str);
        return columnDetails == null ? RealmFieldType.UNSUPPORTED_TABLE : columnDetails.columnType;
    }

    public String getLinkedTable(String str) {
        ColumnDetails columnDetails = (ColumnDetails) this.indicesMap.get(str);
        if (columnDetails == null) {
            return null;
        }
        return columnDetails.linkTable;
    }

    public void copyFrom(ColumnInfo columnInfo) {
        if (!this.mutable) {
            throw new UnsupportedOperationException("Attempt to modify an immutable ColumnInfo");
        } else if (columnInfo == null) {
            throw new NullPointerException("Attempt to copy null ColumnInfo");
        } else {
            this.indicesMap.clear();
            this.indicesMap.putAll(columnInfo.indicesMap);
            copy(columnInfo, this);
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ColumnInfo[");
        stringBuilder.append(this.mutable);
        stringBuilder.append(",");
        Object obj = null;
        for (Entry entry : this.indicesMap.entrySet()) {
            if (obj != null) {
                stringBuilder.append(",");
            }
            stringBuilder.append((String) entry.getKey());
            stringBuilder.append("->");
            stringBuilder.append(entry.getValue());
            obj = 1;
        }
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    protected final long addColumnDetails(Table table, String str, RealmFieldType realmFieldType) {
        long columnIndex = table.getColumnIndex(str);
        if (columnIndex >= 0) {
            if (realmFieldType == RealmFieldType.OBJECT || realmFieldType == RealmFieldType.LIST) {
                table = table.getLinkTarget(columnIndex).getClassName();
            } else {
                table = null;
            }
            this.indicesMap.put(str, new ColumnDetails(columnIndex, realmFieldType, table));
        }
        return columnIndex;
    }
}
