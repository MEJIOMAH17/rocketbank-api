package ru.rocketbank.core.service;

import android.widget.Toast;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: DownloadService.kt */
final class DownloadService$handleActionDownloadPdf$1 implements Runnable {
    final /* synthetic */ DownloadService this$0;

    DownloadService$handleActionDownloadPdf$1(DownloadService downloadService) {
        this.this$0 = downloadService;
    }

    public final void run() {
        Toast.makeText(this.this$0, C0859R.string.dowload_started, 1).show();
    }
}
