package ru.rocketbank.r2d2.utils;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class AndroidBug5497Workaround {
    private final FrameLayout content;
    private int usableHeightPrevious;

    /* renamed from: ru.rocketbank.r2d2.utils.AndroidBug5497Workaround$1 */
    class C16241 implements OnGlobalLayoutListener {
        C16241() {
        }

        public void onGlobalLayout() {
            AndroidBug5497Workaround.this.possiblyResizeChildOfContent();
        }
    }

    public static void assistActivity(Activity activity) {
        if (VERSION.SDK_INT < 19) {
            AndroidBug5497Workaround androidBug5497Workaround = new AndroidBug5497Workaround(activity);
        }
    }

    private AndroidBug5497Workaround(Activity activity) {
        this.content = (FrameLayout) activity.findViewById(16908290);
        this.content.getViewTreeObserver().addOnGlobalLayoutListener(new C16241());
    }

    private void possiblyResizeChildOfContent() {
        View childAt = this.content.getChildAt(0);
        LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
        int computeUsableHeight = computeUsableHeight(childAt);
        if (computeUsableHeight != this.usableHeightPrevious) {
            int height = childAt.getRootView().getHeight();
            int i = this.usableHeightPrevious - computeUsableHeight;
            if (i > height / 4) {
                layoutParams.height = height - i;
            } else {
                layoutParams.height = height;
            }
            childAt.requestLayout();
            this.usableHeightPrevious = computeUsableHeight;
        }
    }

    private int computeUsableHeight(View view) {
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        return rect.bottom - rect.top;
    }
}
