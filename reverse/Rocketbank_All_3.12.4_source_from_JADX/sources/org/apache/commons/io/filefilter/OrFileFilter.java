package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class OrFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = 5767770777065432721L;
    private final List<IOFileFilter> fileFilters;

    public OrFileFilter() {
        this.fileFilters = new ArrayList();
    }

    public OrFileFilter(List<IOFileFilter> list) {
        if (list == null) {
            this.fileFilters = new ArrayList();
        } else {
            this.fileFilters = new ArrayList(list);
        }
    }

    public OrFileFilter(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        if (iOFileFilter != null) {
            if (iOFileFilter2 != null) {
                this.fileFilters = new ArrayList(2);
                addFileFilter(iOFileFilter);
                addFileFilter(iOFileFilter2);
                return;
            }
        }
        throw new IllegalArgumentException("The filters must not be null");
    }

    public void addFileFilter(IOFileFilter iOFileFilter) {
        this.fileFilters.add(iOFileFilter);
    }

    public List<IOFileFilter> getFileFilters() {
        return Collections.unmodifiableList(this.fileFilters);
    }

    public boolean removeFileFilter(IOFileFilter iOFileFilter) {
        return this.fileFilters.remove(iOFileFilter);
    }

    public void setFileFilters(List<IOFileFilter> list) {
        this.fileFilters.clear();
        this.fileFilters.addAll(list);
    }

    public boolean accept(File file) {
        for (IOFileFilter accept : this.fileFilters) {
            if (accept.accept(file)) {
                return true;
            }
        }
        return null;
    }

    public boolean accept(File file, String str) {
        for (IOFileFilter accept : this.fileFilters) {
            if (accept.accept(file, str)) {
                return true;
            }
        }
        return null;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.toString());
        stringBuilder.append("(");
        if (this.fileFilters != null) {
            for (int i = 0; i < this.fileFilters.size(); i++) {
                String str;
                if (i > 0) {
                    stringBuilder.append(",");
                }
                Object obj = this.fileFilters.get(i);
                if (obj == null) {
                    str = "null";
                } else {
                    str = obj.toString();
                }
                stringBuilder.append(str);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }
}
