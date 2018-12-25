package ru.rocketbank.r2d2.activities;

import android.net.Uri;
import android.os.Environment;
import java.io.Closeable;
import java.io.File;
import java.util.Map.Entry;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import okhttp3.Request.Builder;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.BufferedSink;
import okio.Okio;
import org.apache.commons.io.FilenameUtils;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: DownloadActivity.kt */
final class DownloadActivity$processDownloadPdf$1<T> implements OnSubscribe<T> {
    final /* synthetic */ String $url;
    final /* synthetic */ DownloadActivity this$0;

    DownloadActivity$processDownloadPdf$1(DownloadActivity downloadActivity, String str) {
        this.this$0 = downloadActivity;
        this.$url = str;
    }

    public final void call(Subscriber<? super String> subscriber) {
        Closeable buffer;
        try {
            OkHttpClient okHttpClient = new OkHttpClient();
            Builder builder = new Builder().url(this.$url).get();
            if (this.this$0.mode == Mode.MODE_DOWNLOAD_SECURED) {
                for (Entry entry : DownloadActivity.access$getHeaderManager$p(this.this$0).getHeaders().entrySet()) {
                    builder.addHeader((String) entry.getKey(), (String) entry.getValue());
                }
            }
            Response execute = okHttpClient.newCall(builder.build()).execute();
            if (execute != null) {
                if (execute.isSuccessful()) {
                    File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
                    Uri parse = Uri.parse(this.$url);
                    StringBuilder stringBuilder = new StringBuilder("doc_");
                    Intrinsics.checkExpressionValueIsNotNull(parse, "downloadUri");
                    stringBuilder.append(parse.getLastPathSegment());
                    if (!FilenameUtils.isExtension(stringBuilder.toString(), "pdf")) {
                        stringBuilder.append(".pdf");
                    }
                    File file = new File(externalStoragePublicDirectory, stringBuilder.toString());
                    file.createNewFile();
                    buffer = Okio.buffer(Okio.sink(file));
                    BufferedSink bufferedSink = (BufferedSink) buffer;
                    ResponseBody body = execute.body();
                    if (body == null) {
                        Intrinsics.throwNpe();
                    }
                    bufferedSink.writeAll(body.source());
                    CloseableKt.closeFinally(buffer, null);
                    subscriber.onNext(file.getAbsolutePath());
                    return;
                }
            }
            throw new IllegalStateException("incorrect pdf url");
        } catch (Throwable th) {
            subscriber.onError(th);
        }
    }
}
