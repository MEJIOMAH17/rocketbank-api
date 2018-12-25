package ru.rocketbank.r2d2.widgets.helper;

import android.app.Activity;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.os.Build.VERSION;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ImageButton;
import java.util.ArrayList;
import ru.rocketbank.r2d2.C0859R;

public class ToolbarColorizeHelper {
    public static void colorizeToolbar(int i, Toolbar toolbar, Activity activity) {
        final ColorFilter porterDuffColorFilter = new PorterDuffColorFilter(i, Mode.MULTIPLY);
        for (int i2 = 0; i2 < toolbar.getChildCount(); i2++) {
            View childAt = toolbar.getChildAt(i2);
            if (childAt instanceof ImageButton) {
                ((ImageButton) childAt).getDrawable().setColorFilter(porterDuffColorFilter);
            }
            if (childAt instanceof ActionMenuView) {
                int i3 = 0;
                while (true) {
                    ActionMenuView actionMenuView = (ActionMenuView) childAt;
                    if (i3 >= actionMenuView.getChildCount()) {
                        break;
                    }
                    final View childAt2 = actionMenuView.getChildAt(i3);
                    if (childAt2 instanceof ActionMenuItemView) {
                        int i4 = 0;
                        while (true) {
                            ActionMenuItemView actionMenuItemView = (ActionMenuItemView) childAt2;
                            if (i4 >= actionMenuItemView.getCompoundDrawables().length) {
                                break;
                            }
                            if (actionMenuItemView.getCompoundDrawables()[i4] != null) {
                                childAt2.post(new Runnable() {
                                    public final void run() {
                                        ((ActionMenuItemView) childAt2).getCompoundDrawables()[i4].setColorFilter(porterDuffColorFilter);
                                    }
                                });
                            }
                            i4++;
                        }
                    }
                    i3++;
                }
            }
            toolbar.setTitleTextColor(i);
            toolbar.setSubtitleTextColor(i);
            setOverflowButtonColor(activity, porterDuffColorFilter);
        }
    }

    private static void setOverflowButtonColor(Activity activity, PorterDuffColorFilter porterDuffColorFilter) {
        porterDuffColorFilter = activity.getString(C0859R.string.abc_action_menu_overflow_description);
        final ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        viewGroup.getViewTreeObserver().addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
            public final void onGlobalLayout() {
                ArrayList arrayList = new ArrayList();
                viewGroup.findViewsWithText(arrayList, porterDuffColorFilter, 2);
                if (!arrayList.isEmpty()) {
                    ToolbarColorizeHelper.removeOnGlobalLayoutListener(viewGroup, this);
                }
            }
        });
    }

    private static void removeOnGlobalLayoutListener(View view, OnGlobalLayoutListener onGlobalLayoutListener) {
        if (VERSION.SDK_INT < 16) {
            view.getViewTreeObserver().removeGlobalOnLayoutListener(onGlobalLayoutListener);
        } else {
            view.getViewTreeObserver().removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }
}
