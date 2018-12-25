package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;

class ReverseComparator extends AbstractFileComparator implements Serializable {
    private static final long serialVersionUID = -4808255005272229056L;
    private final Comparator<File> delegate;

    public ReverseComparator(Comparator<File> comparator) {
        if (comparator == null) {
            throw new IllegalArgumentException("Delegate comparator is missing");
        }
        this.delegate = comparator;
    }

    public int compare(File file, File file2) {
        return this.delegate.compare(file2, file);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.toString());
        stringBuilder.append("[");
        stringBuilder.append(this.delegate.toString());
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
