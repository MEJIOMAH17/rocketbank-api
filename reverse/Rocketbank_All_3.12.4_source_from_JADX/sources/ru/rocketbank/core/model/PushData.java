package ru.rocketbank.core.model;

import android.graphics.Bitmap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.push.Acme;

/* compiled from: PushData.kt */
public final class PushData {
    private Acme acme;
    private String alert = "";
    private int badge;
    private String category;
    private String iconUrl;
    private boolean isMuted;
    private int sound = -1;
    private Bitmap sourceBitmap;

    public final String getAlert() {
        return this.alert;
    }

    public final void setAlert(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.alert = str;
    }

    public final Acme getAcme() {
        return this.acme;
    }

    public final void setAcme(Acme acme) {
        this.acme = acme;
    }

    public final int getBadge() {
        return this.badge;
    }

    public final void setBadge(int i) {
        this.badge = i;
    }

    public final String getCategory() {
        return this.category;
    }

    public final void setCategory(String str) {
        this.category = str;
    }

    public final int getSound() {
        return this.sound;
    }

    public final void setSound(int i) {
        this.sound = i;
    }

    public final boolean isMuted() {
        return this.isMuted;
    }

    public final void setMuted(boolean z) {
        this.isMuted = z;
    }

    public final Bitmap getSourceBitmap() {
        return this.sourceBitmap;
    }

    public final void setSourceBitmap(Bitmap bitmap) {
        this.sourceBitmap = bitmap;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final void setIconUrl(String str) {
        this.iconUrl = str;
    }
}
