package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import io.fabric.sdk.android.services.concurrency.PriorityRunnable;

public class SafeToast extends Toast {

    /* renamed from: io.fabric.sdk.android.services.common.SafeToast$1 */
    class C14561 extends PriorityRunnable {
        C14561() {
        }

        public void run() {
            super.show();
        }
    }

    public SafeToast(Context context) {
        super(context);
    }

    public void show() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.show();
        } else {
            new Handler(Looper.getMainLooper()).post(new C14561());
        }
    }

    public static Toast makeText(Context context, CharSequence charSequence, int i) {
        charSequence = Toast.makeText(context, charSequence, i);
        i = new SafeToast(context);
        i.setView(charSequence.getView());
        i.setDuration(charSequence.getDuration());
        return i;
    }

    public static Toast makeText(Context context, int i, int i2) throws NotFoundException {
        return makeText(context, context.getResources().getText(i), i2);
    }
}
