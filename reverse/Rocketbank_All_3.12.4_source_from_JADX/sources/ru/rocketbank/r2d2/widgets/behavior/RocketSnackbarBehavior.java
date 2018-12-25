package ru.rocketbank.r2d2.widgets.behavior;

import android.content.Context;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.CoordinatorLayout.Behavior;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import ru.rocketbank.core.widgets.RocketSnackbar.SnackbarLayout;

public class RocketSnackbarBehavior extends Behavior<RelativeLayout> {
    Context context;

    public RocketSnackbarBehavior(Context context, AttributeSet attributeSet) {
        this.context = context;
    }

    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, RelativeLayout relativeLayout, View view) {
        return view instanceof SnackbarLayout;
    }

    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, RelativeLayout relativeLayout, View view) {
        relativeLayout.setTranslationY(Math.min(null, view.getTranslationY() - ((float) view.getHeight())));
        return true;
    }
}
