package ru.rocketbank.r2d2.activities.c2c;

import ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity.SecurityCodeWebViewClient;

/* compiled from: Enter3dSecActivity.kt */
/* renamed from: ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity$SecurityCodeWebViewClient$shouldOverrideUrlLoading$1 */
final class C0874xf8285553 implements Runnable {
    final /* synthetic */ SecurityCodeWebViewClient this$0;

    C0874xf8285553(SecurityCodeWebViewClient securityCodeWebViewClient) {
        this.this$0 = securityCodeWebViewClient;
    }

    public final void run() {
        this.this$0.this$0.requestCode();
    }
}
