package ru.rocketbank.r2d2.activities;

import com.github.barteksc.pdfviewer.listener.OnLoadCompleteListener;

/* compiled from: PdfViewActivity.kt */
final class PdfViewActivity$showPdf$1 implements OnLoadCompleteListener {
    final /* synthetic */ PdfViewActivity this$0;

    PdfViewActivity$showPdf$1(PdfViewActivity pdfViewActivity) {
        this.this$0 = pdfViewActivity;
    }

    public final void loadComplete(int i) {
        if (this.this$0.isReveal != 0) {
            this.this$0.revealOpen(this.this$0.cx, this.this$0.cy);
        }
    }
}
