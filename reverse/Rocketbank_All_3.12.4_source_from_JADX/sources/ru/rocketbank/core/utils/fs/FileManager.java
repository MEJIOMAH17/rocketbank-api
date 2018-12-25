package ru.rocketbank.core.utils.fs;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.AppConfig;
import ru.rocketbank.core.utils.fs.ExternalFile.Companion;

/* compiled from: FileManager.kt */
public final class FileManager {
    private final AppConfig appConfig;
    private final Context context;

    public FileManager(Context context, AppConfig appConfig) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(appConfig, "appConfig");
        this.context = context;
        this.appConfig = appConfig;
    }

    public final Context getContext() {
        return this.context;
    }

    public final ExternalFile createPublicImageFile(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "fileName");
        Intrinsics.checkParameterIsNotNull(str2, "extension");
        File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
        externalStoragePublicDirectory.mkdirs();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append('.');
        stringBuilder.append(str2);
        File file = new File(externalStoragePublicDirectory, stringBuilder.toString());
        str = ExternalFile.Companion;
        return Companion.create(this.context, this.appConfig, file);
    }

    public final ExternalFile createFromPath(String str) {
        Intrinsics.checkParameterIsNotNull(str, "fileName");
        File file = new File(str);
        str = ExternalFile.Companion;
        return Companion.create(this.context, this.appConfig, file);
    }
}
