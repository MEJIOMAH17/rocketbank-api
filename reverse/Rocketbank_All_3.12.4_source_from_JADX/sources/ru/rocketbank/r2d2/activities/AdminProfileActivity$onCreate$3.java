package ru.rocketbank.r2d2.activities;

import android.support.v7.widget.Toolbar;
import android.widget.ImageView;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollViewCallbacks;
import com.github.ksoichiro.android.observablescrollview.ScrollState;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AdminProfileActivity.kt */
public final class AdminProfileActivity$onCreate$3 implements ObservableScrollViewCallbacks {
    final /* synthetic */ ImageView $avatarImageView;
    final /* synthetic */ Toolbar $toolbar;
    final /* synthetic */ AdminProfileActivity this$0;

    public final void onDownMotionEvent() {
    }

    public final void onUpOrCancelMotionEvent(ScrollState scrollState) {
    }

    AdminProfileActivity$onCreate$3(AdminProfileActivity adminProfileActivity, ImageView imageView, Toolbar toolbar) {
        this.this$0 = adminProfileActivity;
        this.$avatarImageView = imageView;
        this.$toolbar = toolbar;
    }

    public final void onScrollChanged(int i, boolean z, boolean z2) {
        z = true - (Math.max(0, this.this$0.height - ((float) i)) / this.this$0.height);
        i = this.$avatarImageView;
        if (i == 0) {
            Intrinsics.throwNpe();
        }
        i.setPadding(0, (int) ((((float) this.$avatarImageView.getHeight()) * z) / true), 0, 0);
        this.this$0.setToolbar(this.$toolbar, z);
    }
}
