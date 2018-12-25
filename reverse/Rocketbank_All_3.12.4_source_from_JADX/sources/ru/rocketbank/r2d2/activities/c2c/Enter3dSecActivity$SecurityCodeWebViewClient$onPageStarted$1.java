package ru.rocketbank.r2d2.activities.c2c;

import ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity.SecurityCodeWebViewClient;

/* compiled from: Enter3dSecActivity.kt */
final class Enter3dSecActivity$SecurityCodeWebViewClient$onPageStarted$1 implements Runnable {
    final /* synthetic */ SecurityCodeWebViewClient this$0;

    Enter3dSecActivity$SecurityCodeWebViewClient$onPageStarted$1(SecurityCodeWebViewClient securityCodeWebViewClient) {
        this.this$0 = securityCodeWebViewClient;
    }

    public final void run() {
        if (this.this$0.this$0.timeout) {
            this.this$0.this$0.setErrorTimeout();
        }
    }
}
