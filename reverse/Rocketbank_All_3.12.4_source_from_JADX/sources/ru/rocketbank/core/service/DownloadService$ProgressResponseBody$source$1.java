package ru.rocketbank.core.service;

import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ForwardingSource;
import okio.Source;
import ru.rocketbank.core.service.DownloadService.ProgressResponseBody;

/* compiled from: DownloadService.kt */
public final class DownloadService$ProgressResponseBody$source$1 extends ForwardingSource {
    final /* synthetic */ Source $source;
    final /* synthetic */ ProgressResponseBody this$0;
    private long totalBytesRead;

    DownloadService$ProgressResponseBody$source$1(ProgressResponseBody progressResponseBody, Source source, Source source2) {
        this.this$0 = progressResponseBody;
        this.$source = source;
        super(source2);
    }

    public final long read(Buffer buffer, long j) throws IOException {
        Intrinsics.checkParameterIsNotNull(buffer, "sink");
        buffer = super.read(buffer, j);
        this.totalBytesRead += buffer != -1 ? buffer : 0;
        this.this$0.progressListener.update$48779ebf(this.totalBytesRead, this.this$0.responseBody.contentLength());
        return buffer;
    }
}
