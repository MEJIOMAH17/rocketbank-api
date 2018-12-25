package ru.rocketbank.r2d2.fragments;

import android.support.v7.app.AppCompatActivity;
import io.fabric.sdk.android.services.common.AbstractSpiCall;

public abstract class BaseFragment extends RocketFragment {
    protected final void setBackButton() {
        AppCompatActivity appCompatActivity = (AppCompatActivity) getActivity();
        if (appCompatActivity.getSupportActionBar() != null) {
            appCompatActivity.getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
    }

    protected final void setToolbar(android.support.v7.widget.Toolbar r3) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r2 = this;
        r0 = r2.getActivity();
        r0 = (android.support.v7.app.AppCompatActivity) r0;
        r0.setSupportActionBar(r3);	 Catch:{ Throwable -> 0x0011 }
        r3 = r0.getSupportActionBar();	 Catch:{ Throwable -> 0x0011 }
        r1 = 1;	 Catch:{ Throwable -> 0x0011 }
        r3.setDisplayHomeAsUpEnabled(r1);	 Catch:{ Throwable -> 0x0011 }
    L_0x0011:
        r3 = r0 instanceof ru.rocketbank.r2d2.activities.MainActivity;
        if (r3 == 0) goto L_0x001a;
    L_0x0015:
        r0 = (ru.rocketbank.r2d2.activities.MainActivity) r0;
        r0.setActionButtonIcon();
    L_0x001a:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.BaseFragment.setToolbar(android.support.v7.widget.Toolbar):void");
    }

    protected int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        return identifier > 0 ? getResources().getDimensionPixelSize(identifier) : 0;
    }
}
