package org.apache.commons.io;

import java.io.File;
import java.io.IOException;

public class FileExistsException extends IOException {
    private static final long serialVersionUID = 1;

    public FileExistsException(String str) {
        super(str);
    }

    public FileExistsException(File file) {
        StringBuilder stringBuilder = new StringBuilder("File ");
        stringBuilder.append(file);
        stringBuilder.append(" exists");
        super(stringBuilder.toString());
    }
}
