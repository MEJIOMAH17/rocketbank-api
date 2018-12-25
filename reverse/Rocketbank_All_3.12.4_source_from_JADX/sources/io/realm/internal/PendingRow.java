package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Date;

public class PendingRow implements Row {
    public boolean isAttached() {
        return false;
    }

    public long getColumnCount() {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public String getColumnName(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public long getColumnIndex(String str) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public RealmFieldType getColumnType(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public Table getTable() {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public long getIndex() {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public long getLong(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public boolean getBoolean(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public float getFloat(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public double getDouble(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public Date getDate(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public String getString(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public byte[] getBinaryByteArray(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public long getLink(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public boolean isNullLink(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public LinkView getLinkList(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public void setLong(long j, long j2) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public void setBoolean(long j, boolean z) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public void setFloat(long j, float f) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public void setDouble(long j, double d) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public void setString(long j, String str) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public void setBinaryByteArray(long j, byte[] bArr) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public void setLink(long j, long j2) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public void nullifyLink(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public boolean isNull(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    public void setNull(long j) {
        throw new IllegalStateException("The pending query has not been executed.");
    }

    static /* synthetic */ void access$000(PendingRow pendingRow) {
        throw new IllegalStateException("The 'frontEnd' has not been set.");
    }
}
