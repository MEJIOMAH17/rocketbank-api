package ru.rocketbank.core.utils.fs;

import android.content.Context;
import android.net.Uri;
import com.facebook.share.internal.ShareConstants;
import java.io.File;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.utils.AppConfig;

/* compiled from: ExternalFileImpl.kt */
public final class ExternalFileImpl implements ExternalFileBase {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(ExternalFileImpl.class), ShareConstants.MEDIA_URI, "getUri()Landroid/net/Uri;"))};
    private final File file;
    private final Lazy uri$delegate;

    public final Uri getUri() {
        return (Uri) this.uri$delegate.getValue();
    }

    public ExternalFileImpl(Context context, AppConfig appConfig, File file) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(appConfig, "appConfig");
        Intrinsics.checkParameterIsNotNull(file, "file");
        this.file = file;
        this.uri$delegate = ExceptionsKt__ExceptionsKt.lazy((Function0) new ExternalFileImpl$uri$2(this, context, appConfig));
    }

    public final File getFile() {
        return this.file;
    }

    public final String getAbsolutePath() {
        String absolutePath = getFile().getAbsolutePath();
        Intrinsics.checkExpressionValueIsNotNull(absolutePath, "file.absolutePath");
        return absolutePath;
    }
}
