package com.github.barteksc.pdfviewer.source;

import com.shockwave.pdfium.PdfDocument;
import com.shockwave.pdfium.PdfiumCore;
import java.io.IOException;

public interface DocumentSource {
    PdfDocument createDocument$49c2968a(PdfiumCore pdfiumCore, String str) throws IOException;
}
