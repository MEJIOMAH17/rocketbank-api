package ru.rocketbank.r2d2.friends;

import android.support.v4.app.Fragment;
import android.view.View;

public class SharedElementsReadyEvent {
    private View avatar;
    private Fragment fragment;
    private View name;

    public SharedElementsReadyEvent(Fragment fragment, View view, View view2) {
        this.fragment = fragment;
        this.avatar = view;
        this.name = view2;
    }

    public View getAvatar() {
        return this.avatar;
    }

    public View getName() {
        return this.name;
    }

    public Fragment getFragment() {
        return this.fragment;
    }
}
