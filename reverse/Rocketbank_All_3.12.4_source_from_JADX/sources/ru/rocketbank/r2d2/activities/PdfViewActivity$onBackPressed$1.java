package ru.rocketbank.r2d2.activities;

import com.github.barteksc.pdfviewer.PDFView;
import io.codetail.animation.SupportAnimator.AnimatorListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PdfViewActivity.kt */
public final class PdfViewActivity$onBackPressed$1 implements AnimatorListener {
    final /* synthetic */ PdfViewActivity this$0;

    public final void onAnimationRepeat() {
    }

    public final void onAnimationStart() {
    }

    PdfViewActivity$onBackPressed$1(PdfViewActivity pdfViewActivity) {
        this.this$0 = pdfViewActivity;
    }

    public final void onAnimationEnd() {
        PDFView pDFView = PdfViewActivity.access$getBinding$p(this.this$0).pdfView;
        Intrinsics.checkExpressionValueIsNotNull(pDFView, "binding.pdfView");
        pDFView.setVisibility(4);
        this.this$0.finish();
        this.this$0.overridePendingTransition(0, 0);
    }

    public final void onAnimationCancel() {
        this.this$0.finish();
    }
}
