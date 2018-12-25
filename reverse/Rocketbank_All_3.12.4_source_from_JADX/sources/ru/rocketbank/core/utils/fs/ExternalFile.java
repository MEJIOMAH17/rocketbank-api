package ru.rocketbank.core.utils.fs;

import android.content.Context;
import android.net.Uri;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.AppConfig;

/* compiled from: ExternalFile.kt */
public final class ExternalFile implements ExternalFileBase {
    public static final Companion Companion = new Companion();
    private final /* synthetic */ ExternalFileBase $$delegate_0;

    /* compiled from: ExternalFile.kt */
    public static final class Companion {
        private Companion() {
        }

        public static ExternalFile create(Context context, AppConfig appConfig, File file) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(appConfig, "appConfig");
            Intrinsics.checkParameterIsNotNull(file, "file");
            return new ExternalFile(new ExternalFileImpl(context, appConfig, file));
        }
    }

    public final String getAbsolutePath() {
        return this.$$delegate_0.getAbsolutePath();
    }

    public final File getFile() {
        return this.$$delegate_0.getFile();
    }

    public final Uri getUri() {
        return this.$$delegate_0.getUri();
    }

    public ExternalFile(ExternalFileBase externalFileBase) {
        Intrinsics.checkParameterIsNotNull(externalFileBase, "base");
        this.$$delegate_0 = externalFileBase;
    }
}
