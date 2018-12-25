package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class NotFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = 6131563330944994230L;
    private final IOFileFilter filter;

    public NotFileFilter(IOFileFilter iOFileFilter) {
        if (iOFileFilter == null) {
            throw new IllegalArgumentException("The filter must not be null");
        }
        this.filter = iOFileFilter;
    }

    public boolean accept(File file) {
        return this.filter.accept(file) == null ? true : null;
    }

    public boolean accept(File file, String str) {
        return this.filter.accept(file, str) == null ? true : null;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.toString());
        stringBuilder.append("(");
        stringBuilder.append(this.filter.toString());
        stringBuilder.append(")");
        return stringBuilder.toString();
    }
}
