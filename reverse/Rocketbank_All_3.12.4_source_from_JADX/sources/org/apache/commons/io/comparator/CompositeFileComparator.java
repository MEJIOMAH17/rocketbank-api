package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class CompositeFileComparator extends AbstractFileComparator implements Serializable {
    private static final Comparator<?>[] NO_COMPARATORS = new Comparator[0];
    private static final long serialVersionUID = -2224170307287243428L;
    private final Comparator<File>[] delegates;

    public CompositeFileComparator(Comparator<File>... comparatorArr) {
        if (comparatorArr == null) {
            this.delegates = (Comparator[]) NO_COMPARATORS;
            return;
        }
        this.delegates = new Comparator[comparatorArr.length];
        System.arraycopy(comparatorArr, 0, this.delegates, 0, comparatorArr.length);
    }

    public CompositeFileComparator(Iterable<Comparator<File>> iterable) {
        if (iterable == null) {
            this.delegates = (Comparator[]) NO_COMPARATORS;
            return;
        }
        List arrayList = new ArrayList();
        for (Comparator add : iterable) {
            arrayList.add(add);
        }
        this.delegates = (Comparator[]) arrayList.toArray(new Comparator[arrayList.size()]);
    }

    public int compare(File file, File file2) {
        Comparator[] comparatorArr = this.delegates;
        int i = 0;
        int length = comparatorArr.length;
        int i2 = 0;
        while (i < length) {
            i2 = comparatorArr[i].compare(file, file2);
            if (i2 != 0) {
                break;
            }
            i++;
        }
        return i2;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.toString());
        stringBuilder.append('{');
        for (int i = 0; i < this.delegates.length; i++) {
            if (i > 0) {
                stringBuilder.append(',');
            }
            stringBuilder.append(this.delegates[i]);
        }
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
