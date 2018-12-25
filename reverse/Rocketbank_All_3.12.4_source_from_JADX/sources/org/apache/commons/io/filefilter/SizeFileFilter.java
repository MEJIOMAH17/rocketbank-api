package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class SizeFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = 7388077430788600069L;
    private final boolean acceptLarger;
    private final long size;

    public SizeFileFilter(long j) {
        this(j, true);
    }

    public SizeFileFilter(long j, boolean z) {
        if (j < 0) {
            throw new IllegalArgumentException("The size must be non-negative");
        }
        this.size = j;
        this.acceptLarger = z;
    }

    public boolean accept(File file) {
        file = file.length() < this.size ? 1 : null;
        if (this.acceptLarger) {
            return file == null;
        } else {
            return file;
        }
    }

    public String toString() {
        String str = this.acceptLarger ? ">=" : "<";
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.toString());
        stringBuilder.append("(");
        stringBuilder.append(str);
        stringBuilder.append(this.size);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }
}
