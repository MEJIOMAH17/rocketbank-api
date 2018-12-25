package ru.rocketbank.r2d2.activities.c2c;

/* compiled from: Enter3dSecActivity.kt */
public final class Enter3dSecActivity$timeOutcheckRunnable$1 implements Runnable {
    final /* synthetic */ Enter3dSecActivity this$0;

    Enter3dSecActivity$timeOutcheckRunnable$1(Enter3dSecActivity enter3dSecActivity) {
        this.this$0 = enter3dSecActivity;
    }

    public final void run() {
        if (this.this$0.timeout) {
            this.this$0.setErrorTimeout();
        } else {
            this.this$0.handler.postDelayed(this, 10000);
        }
    }
}
