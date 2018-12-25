package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class TrueFileFilter implements Serializable, IOFileFilter {
    public static final IOFileFilter INSTANCE;
    public static final IOFileFilter TRUE;
    private static final long serialVersionUID = 8782512160909720199L;

    public boolean accept(File file) {
        return true;
    }

    public boolean accept(File file, String str) {
        return true;
    }

    static {
        IOFileFilter trueFileFilter = new TrueFileFilter();
        TRUE = trueFileFilter;
        INSTANCE = trueFileFilter;
    }

    protected TrueFileFilter() {
    }
}
