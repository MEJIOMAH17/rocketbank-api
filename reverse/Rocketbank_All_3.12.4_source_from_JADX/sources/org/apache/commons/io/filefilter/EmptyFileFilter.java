package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class EmptyFileFilter extends AbstractFileFilter implements Serializable {
    public static final IOFileFilter EMPTY = new EmptyFileFilter();
    public static final IOFileFilter NOT_EMPTY = new NotFileFilter(EMPTY);
    private static final long serialVersionUID = 3631422087512832211L;

    protected EmptyFileFilter() {
    }

    public boolean accept(File file) {
        if (!file.isDirectory()) {
            return file.length() == 0;
        } else {
            file = file.listFiles();
            if (file != null) {
                if (file.length != null) {
                    return false;
                }
            }
            return true;
        }
    }
}
