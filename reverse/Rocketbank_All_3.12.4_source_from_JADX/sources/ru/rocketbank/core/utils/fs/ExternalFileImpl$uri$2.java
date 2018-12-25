package ru.rocketbank.core.utils.fs;

import android.content.Context;
import android.net.Uri;
import android.support.v4.content.FileProvider;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.utils.AppConfig;

/* compiled from: ExternalFileImpl.kt */
final class ExternalFileImpl$uri$2 extends Lambda implements Function0<Uri> {
    final /* synthetic */ AppConfig $appConfig;
    final /* synthetic */ Context $context;
    final /* synthetic */ ExternalFileImpl this$0;

    ExternalFileImpl$uri$2(ExternalFileImpl externalFileImpl, Context context, AppConfig appConfig) {
        this.this$0 = externalFileImpl;
        this.$context = context;
        this.$appConfig = appConfig;
        super(0);
    }

    public final Uri invoke() {
        try {
            Context applicationContext = this.$context.getApplicationContext();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.$appConfig.getApplicationId());
            stringBuilder.append(".provider");
            return FileProvider.getUriForFile(applicationContext, stringBuilder.toString(), this.this$0.getFile());
        } catch (Throwable th) {
            AnalyticsManager.logException(th);
            return null;
        }
    }
}
