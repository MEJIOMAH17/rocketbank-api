package ru.rocketbank.core.model.message;

import ru.rocketbank.core.network.Request;

/* compiled from: DocumentAttachment.kt */
public final class DocumentAttachment extends Attachment {
    private String ext;

    public final String getExt() {
        return this.ext;
    }

    public final void setExt(String str) {
        this.ext = str;
    }

    public final String getDocument() {
        return getAsDocument(false);
    }

    public final String getDocumentThumb() {
        return getAsDocument(true);
    }

    private final String getAsDocument(boolean z) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(Request.LINK_API);
        stringBuilder.append("/documents/");
        stringBuilder.append(getId());
        stringBuilder.append(z ? "/thumb" : "");
        return stringBuilder.toString();
    }
}
