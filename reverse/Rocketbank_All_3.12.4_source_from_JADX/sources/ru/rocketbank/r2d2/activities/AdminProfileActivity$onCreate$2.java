package ru.rocketbank.r2d2.activities;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

/* compiled from: AdminProfileActivity.kt */
final class AdminProfileActivity$onCreate$2 implements OnTouchListener {
    final /* synthetic */ AdminProfileActivity this$0;

    AdminProfileActivity$onCreate$2(AdminProfileActivity adminProfileActivity) {
        this.this$0 = adminProfileActivity;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return this.this$0.isScroll == null ? true : null;
    }
}
