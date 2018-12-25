package ru.rocketbank.r2d2.activities;

import android.support.v7.widget.Toolbar;
import android.widget.ImageView;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AdminProfileActivity.kt */
final class AdminProfileActivity$onCreate$4 implements Runnable {
    final /* synthetic */ ImageView $avatarImageView;
    final /* synthetic */ Toolbar $toolbar;
    final /* synthetic */ AdminProfileActivity this$0;

    AdminProfileActivity$onCreate$4(AdminProfileActivity adminProfileActivity, ImageView imageView, Toolbar toolbar) {
        this.this$0 = adminProfileActivity;
        this.$avatarImageView = imageView;
        this.$toolbar = toolbar;
    }

    public final void run() {
        AdminProfileActivity adminProfileActivity = this.this$0;
        ImageView imageView = this.$avatarImageView;
        if (imageView == null) {
            Intrinsics.throwNpe();
        }
        adminProfileActivity.height = (float) (imageView.getHeight() - this.$toolbar.getHeight());
    }
}
