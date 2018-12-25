package com.github.barteksc.pdfviewer;

import android.content.Context;
import android.os.AsyncTask;
import com.github.barteksc.pdfviewer.source.DocumentSource;
import com.shockwave.pdfium.PdfDocument;
import com.shockwave.pdfium.PdfiumCore;

final class DecodingAsyncTask extends AsyncTask<Void, Void, Throwable> {
    private boolean cancelled = false;
    private Context context;
    private DocumentSource docSource;
    private int firstPageIdx = 0;
    private int pageHeight;
    private int pageWidth;
    private String password;
    private PdfDocument pdfDocument;
    private PDFView pdfView;
    private PdfiumCore pdfiumCore;

    protected final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        return doInBackground$5c22e4b4();
    }

    protected final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        Throwable th = (Throwable) obj;
        if (th != null) {
            this.pdfView.loadError(th);
            return;
        }
        if (this.cancelled == null) {
            this.pdfView.loadComplete(this.pdfDocument, this.pageWidth, this.pageHeight);
        }
    }

    DecodingAsyncTask(DocumentSource documentSource, PDFView pDFView, PdfiumCore pdfiumCore) {
        this.docSource = documentSource;
        this.pdfView = pDFView;
        this.password = null;
        this.pdfiumCore = pdfiumCore;
        this.context = pDFView.getContext();
    }

    private Throwable doInBackground$5c22e4b4() {
        try {
            this.pdfDocument = this.docSource.createDocument$49c2968a(this.pdfiumCore, null);
            this.pdfiumCore.openPage(this.pdfDocument, 0);
            this.pageWidth = this.pdfiumCore.getPageWidth(this.pdfDocument, 0);
            this.pageHeight = this.pdfiumCore.getPageHeight(this.pdfDocument, 0);
            return null;
        } catch (Throwable th) {
            return th;
        }
    }

    protected final void onCancelled() {
        this.cancelled = true;
    }
}
