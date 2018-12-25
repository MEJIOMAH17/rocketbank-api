package ru.rocketbank.core.service;

import android.app.IntentService;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.support.v4.app.NotificationCompat.Builder;
import java.io.File;
import java.io.IOException;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.network.image.ImageLoading;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: DownloadService.kt */
public final class DownloadService extends IntentService {
    public static final Companion Companion = new Companion();
    public Handler handler;

    /* compiled from: DownloadService.kt */
    public static final class Companion {
        private Companion() {
        }

        public static void startDownloadPdf(Context context, String str, String str2) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(str, "url");
            context.startService(buildDownloadIntent(context, str, str2));
        }

        private static Intent buildDownloadIntent(Context context, String str, String str2) {
            Intent intent = new Intent(context, DownloadService.class);
            intent.setAction("ACTION_PDF");
            intent.putExtra("EXTRA_URL", str);
            intent.putExtra("EXTRA_DESCRIPTION", str2);
            return intent;
        }
    }

    /* compiled from: DownloadService.kt */
    public interface ProgressListener {
        void update$48779ebf(long j, long j2);
    }

    /* compiled from: DownloadService.kt */
    public static final class ProgressResponseBody extends ResponseBody {
        private BufferedSource bufferedSource;
        private final ProgressListener progressListener;
        private final ResponseBody responseBody;

        public ProgressResponseBody(ResponseBody responseBody, ProgressListener progressListener) {
            Intrinsics.checkParameterIsNotNull(responseBody, "responseBody");
            Intrinsics.checkParameterIsNotNull(progressListener, "progressListener");
            this.responseBody = responseBody;
            this.progressListener = progressListener;
        }

        public final MediaType contentType() {
            MediaType contentType = this.responseBody.contentType();
            if (contentType == null) {
                Intrinsics.throwNpe();
            }
            return contentType;
        }

        public final long contentLength() throws IOException {
            return this.responseBody.contentLength();
        }

        public final BufferedSource source() throws IOException {
            if (this.bufferedSource == null) {
                BufferedSource source = this.responseBody.source();
                Intrinsics.checkExpressionValueIsNotNull(source, "responseBody.source()");
                Source source2 = source;
                this.bufferedSource = Okio.buffer((Source) new DownloadService$ProgressResponseBody$source$1(this, source2, source2));
            }
            return this.bufferedSource;
        }
    }

    public DownloadService() {
        super("DownloadService");
    }

    public final void onCreate() {
        super.onCreate();
        this.handler = new Handler();
    }

    protected final void onHandleIntent(Intent intent) {
        if (intent != null) {
            if (Intrinsics.areEqual("ACTION_PDF", intent.getAction())) {
                String stringExtra = intent.getStringExtra("EXTRA_URL");
                intent = intent.getStringExtra("EXTRA_DESCRIPTION");
                try {
                    Intrinsics.checkExpressionValueIsNotNull(stringExtra, "url");
                    Handler handler = this.handler;
                    if (handler == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("handler");
                    }
                    handler.post(new DownloadService$handleActionDownloadPdf$1(this));
                    Object systemService = getSystemService("notification");
                    if (systemService == null) {
                        throw new TypeCastException("null cannot be cast to non-null type android.app.NotificationManager");
                    }
                    NotificationManager notificationManager = (NotificationManager) systemService;
                    Builder builder = new Builder(this);
                    Uri parse = Uri.parse(stringExtra);
                    Intrinsics.checkExpressionValueIsNotNull(parse, "Uri.parse(url)");
                    builder.setContentTitle((CharSequence) intent).setContentText(getText(C0859R.string.downloading)).setSmallIcon(C0859R.drawable.ic_download_support);
                    OkHttpClient okHttpClient = new OkHttpClient();
                    okHttpClient.interceptors().add(ImageLoading.INSTANCE.getAuthInterceptor());
                    okHttpClient.networkInterceptors().add(new DownloadService$handleActionDownloadPdf$2(builder, notificationManager));
                    Response execute = okHttpClient.newCall(new Request.Builder().url(stringExtra).get().build()).execute();
                    if (execute != null) {
                        if (execute.isSuccessful()) {
                            intent = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
                            StringBuilder stringBuilder = new StringBuilder("doc_");
                            stringBuilder.append(parse.getLastPathSegment());
                            stringBuilder.append(".pdf");
                            File file = new File(intent, stringBuilder.toString());
                            intent = Okio.buffer(Okio.sink(file));
                            ResponseBody body = execute.body();
                            if (body == null) {
                                Intrinsics.throwNpe();
                            }
                            intent.writeAll(body.source());
                            intent.close();
                            intent = new Intent("android.intent.action.VIEW");
                            intent.setDataAndType(Uri.fromFile(file), "application/pdf");
                            intent.setFlags(67108864);
                            builder.setContentText(getString(C0859R.string.downloaded)).setProgress(0, 0, false).setContentIntent(PendingIntent.getActivity(this, 0, intent, 268435456));
                            notificationManager.notify(0, builder.build());
                            return;
                        }
                    }
                    builder.setContentText(getString(C0859R.string.download_failed)).setProgress(0, 0, false).setContentIntent(PendingIntent.getActivity(this, 0, Companion.buildDownloadIntent(this, stringExtra, intent), 268435456));
                    notificationManager.notify(0, builder.build());
                } catch (Intent intent2) {
                    throw new IllegalStateException((Throwable) intent2);
                } catch (Intent intent22) {
                    AnalyticsManager.logException((Throwable) intent22);
                }
            }
        }
    }
}
