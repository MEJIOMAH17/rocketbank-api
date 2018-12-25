package com.jakewharton.rxbinding.view;

import android.view.View;

public final class ViewAttachEvent extends ViewEvent<View> {
    private final Kind kind;

    public enum Kind {
        ATTACH,
        DETACH
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ViewAttachEvent)) {
            return false;
        }
        ViewAttachEvent viewAttachEvent = (ViewAttachEvent) obj;
        return viewAttachEvent.view() == view() && viewAttachEvent.kind == this.kind;
    }

    public final int hashCode() {
        return ((629 + view().hashCode()) * 37) + this.kind.hashCode();
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("ViewAttachEvent{view=");
        stringBuilder.append(view());
        stringBuilder.append(", kind=");
        stringBuilder.append(this.kind);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
