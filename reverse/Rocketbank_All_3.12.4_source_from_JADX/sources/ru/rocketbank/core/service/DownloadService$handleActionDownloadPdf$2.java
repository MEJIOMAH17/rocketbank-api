package ru.rocketbank.core.service;

import android.app.NotificationManager;
import android.support.v4.app.NotificationCompat.Builder;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.Response;
import ru.rocketbank.core.service.DownloadService.ProgressListener;
import ru.rocketbank.core.service.DownloadService.ProgressResponseBody;

/* compiled from: DownloadService.kt */
final class DownloadService$handleActionDownloadPdf$2 implements Interceptor {
    final /* synthetic */ int $id = 0;
    final /* synthetic */ Builder $notificationBuilder;
    final /* synthetic */ NotificationManager $notificationManager;

    DownloadService$handleActionDownloadPdf$2(Builder builder, NotificationManager notificationManager) {
        this.$notificationBuilder = builder;
        this.$notificationManager = notificationManager;
    }

    public final Response intercept(Chain chain) {
        chain = chain.proceed(chain.request());
        if (chain == null) {
            Intrinsics.throwNpe();
        }
        Response.Builder newBuilder = chain.newBuilder();
        chain = chain.body();
        if (chain == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(chain, "originalResponse.body()!!");
        return newBuilder.body(new ProgressResponseBody(chain, new ProgressListener() {
            public final void update$48779ebf(long j, long j2) {
                this.$notificationBuilder.setProgress(100, (int) ((100 * j) / j2), false);
                this.$notificationManager.notify(0, this.$notificationBuilder.build());
            }
        })).build();
    }
}
