package ru.rocketbank.r2d2.root.operation.vh;

import android.databinding.ObservableBoolean;

/* compiled from: CommonOperationData.kt */
public final class CommonOperationData {
    private String currentComment;
    private String lastComment;
    private final ObservableBoolean saveActionsActive = new ObservableBoolean(false);
    private final ObservableBoolean updateInProgress = new ObservableBoolean(false);
    private float zoomLevel = 16.0f;

    public final float getZoomLevel() {
        return this.zoomLevel;
    }

    public final void setZoomLevel(float f) {
        this.zoomLevel = f;
    }

    public final String getLastComment() {
        return this.lastComment;
    }

    public final void setLastComment(String str) {
        this.lastComment = str;
    }

    public final String getCurrentComment() {
        return this.currentComment;
    }

    public final void setCurrentComment(String str) {
        this.currentComment = str;
    }

    public final ObservableBoolean getSaveActionsActive() {
        return this.saveActionsActive;
    }

    public final ObservableBoolean getUpdateInProgress() {
        return this.updateInProgress;
    }
}
