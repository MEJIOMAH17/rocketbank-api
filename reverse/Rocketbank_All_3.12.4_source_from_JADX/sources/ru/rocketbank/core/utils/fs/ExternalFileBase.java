package ru.rocketbank.core.utils.fs;

import android.net.Uri;
import java.io.File;

/* compiled from: ExternalFile.kt */
public interface ExternalFileBase {
    String getAbsolutePath();

    File getFile();

    Uri getUri();
}
