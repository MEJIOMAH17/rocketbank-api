package io.realm;

import io.realm.internal.RealmObjectProxy;
import java.util.Arrays;

public final class DynamicRealmObject extends RealmObject implements RealmObjectProxy {
    private final ProxyState<DynamicRealmObject> proxyState;

    public final void realm$injectObjectContext() {
    }

    private String[] getFieldNames() {
        this.proxyState.getRealm$realm().checkIfValid();
        String[] strArr = new String[((int) this.proxyState.getRow$realm().getColumnCount())];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = this.proxyState.getRow$realm().getColumnName((long) i);
        }
        return strArr;
    }

    public final String getType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getTable().getClassName();
    }

    public final int hashCode() {
        this.proxyState.getRealm$realm().checkIfValid();
        String path = this.proxyState.getRealm$realm().getPath();
        String name = this.proxyState.getRow$realm().getTable().getName();
        long index = this.proxyState.getRow$realm().getIndex();
        int i = 0;
        int hashCode = (527 + (path != null ? path.hashCode() : 0)) * 31;
        if (name != null) {
            i = name.hashCode();
        }
        return ((hashCode + i) * 31) + ((int) (index ^ (index >>> 32)));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean equals(java.lang.Object r7) {
        /*
        r6 = this;
        r0 = r6.proxyState;
        r0 = r0.getRealm$realm();
        r0.checkIfValid();
        r0 = 1;
        if (r6 != r7) goto L_0x000d;
    L_0x000c:
        return r0;
    L_0x000d:
        r1 = 0;
        if (r7 == 0) goto L_0x007f;
    L_0x0010:
        r2 = r6.getClass();
        r3 = r7.getClass();
        if (r2 == r3) goto L_0x001b;
    L_0x001a:
        goto L_0x007f;
    L_0x001b:
        r7 = (io.realm.DynamicRealmObject) r7;
        r2 = r6.proxyState;
        r2 = r2.getRealm$realm();
        r2 = r2.getPath();
        r3 = r7.proxyState;
        r3 = r3.getRealm$realm();
        r3 = r3.getPath();
        if (r2 == 0) goto L_0x003a;
    L_0x0033:
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x003d;
    L_0x0039:
        goto L_0x003c;
    L_0x003a:
        if (r3 == 0) goto L_0x003d;
    L_0x003c:
        return r1;
    L_0x003d:
        r2 = r6.proxyState;
        r2 = r2.getRow$realm();
        r2 = r2.getTable();
        r2 = r2.getName();
        r3 = r7.proxyState;
        r3 = r3.getRow$realm();
        r3 = r3.getTable();
        r3 = r3.getName();
        if (r2 == 0) goto L_0x0062;
    L_0x005b:
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x0065;
    L_0x0061:
        goto L_0x0064;
    L_0x0062:
        if (r3 == 0) goto L_0x0065;
    L_0x0064:
        return r1;
    L_0x0065:
        r2 = r6.proxyState;
        r2 = r2.getRow$realm();
        r2 = r2.getIndex();
        r7 = r7.proxyState;
        r7 = r7.getRow$realm();
        r4 = r7.getIndex();
        r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r7 != 0) goto L_0x007e;
    L_0x007d:
        return r0;
    L_0x007e:
        return r1;
    L_0x007f:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.DynamicRealmObject.equals(java.lang.Object):boolean");
    }

    public final String toString() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (!this.proxyState.getRow$realm().isAttached()) {
            return "Invalid object";
        }
        String className = this.proxyState.getRow$realm().getTable().getClassName();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(className);
        stringBuilder.append(" = dynamic[");
        StringBuilder stringBuilder2 = new StringBuilder(stringBuilder.toString());
        for (String str : getFieldNames()) {
            long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
            RealmFieldType columnType = this.proxyState.getRow$realm().getColumnType(columnIndex);
            stringBuilder2.append("{");
            stringBuilder2.append(str);
            stringBuilder2.append(":");
            switch (columnType) {
                case BOOLEAN:
                    stringBuilder2.append(this.proxyState.getRow$realm().isNull(columnIndex) ? "null" : Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(columnIndex)));
                    break;
                case INTEGER:
                    stringBuilder2.append(this.proxyState.getRow$realm().isNull(columnIndex) ? "null" : Long.valueOf(this.proxyState.getRow$realm().getLong(columnIndex)));
                    break;
                case FLOAT:
                    stringBuilder2.append(this.proxyState.getRow$realm().isNull(columnIndex) ? "null" : Float.valueOf(this.proxyState.getRow$realm().getFloat(columnIndex)));
                    break;
                case DOUBLE:
                    stringBuilder2.append(this.proxyState.getRow$realm().isNull(columnIndex) ? "null" : Double.valueOf(this.proxyState.getRow$realm().getDouble(columnIndex)));
                    break;
                case STRING:
                    stringBuilder2.append(this.proxyState.getRow$realm().getString(columnIndex));
                    break;
                case BINARY:
                    stringBuilder2.append(Arrays.toString(this.proxyState.getRow$realm().getBinaryByteArray(columnIndex)));
                    break;
                case DATE:
                    stringBuilder2.append(this.proxyState.getRow$realm().isNull(columnIndex) ? "null" : this.proxyState.getRow$realm().getDate(columnIndex));
                    break;
                case OBJECT:
                    String str2;
                    if (this.proxyState.getRow$realm().isNullLink(columnIndex)) {
                        str2 = "null";
                    } else {
                        str2 = this.proxyState.getRow$realm().getTable().getLinkTarget(columnIndex).getClassName();
                    }
                    stringBuilder2.append(str2);
                    break;
                case LIST:
                    stringBuilder2.append(String.format("RealmList<%s>[%s]", new Object[]{this.proxyState.getRow$realm().getTable().getLinkTarget(columnIndex).getClassName(), Long.valueOf(this.proxyState.getRow$realm().getLinkList(columnIndex).size())}));
                    break;
                default:
                    stringBuilder2.append("?");
                    break;
            }
            stringBuilder2.append("},");
        }
        stringBuilder2.replace(stringBuilder2.length() - 1, stringBuilder2.length(), "");
        stringBuilder2.append("]");
        return stringBuilder2.toString();
    }

    public final ProxyState realmGet$proxyState() {
        return this.proxyState;
    }
}
