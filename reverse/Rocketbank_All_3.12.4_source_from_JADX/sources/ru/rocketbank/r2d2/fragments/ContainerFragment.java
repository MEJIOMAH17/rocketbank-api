package ru.rocketbank.r2d2.fragments;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import ru.rocketbank.r2d2.ActionBarTitleInstaller;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.IHostFragment;

public abstract class ContainerFragment extends Fragment implements ActionBarTitleInstaller, IHostFragment {
    public boolean canShowMenu() {
        return false;
    }

    public String getActionBarTitle() {
        return null;
    }

    protected abstract int getContainerId();

    protected abstract int getLayoutId();

    protected abstract Fragment getStartupFragment();

    public int getToolbarId() {
        return C0859R.id.toolbar;
    }

    public void onToolbarSet(Toolbar toolbar) {
    }

    public boolean canBack() {
        return getChildFragmentManager().getBackStackEntryCount() > 0;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(getLayoutId(), viewGroup, false);
    }

    public void moveBack() {
        getChildFragmentManager().popBackStackImmediate();
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (bundle == null) {
            showStartupFragment();
        }
        Toolbar toolbar = (Toolbar) view.findViewById(getToolbarId());
        if (toolbar != null) {
            setToolbarSize(toolbar, getStatusBarHeight());
            onToolbarSet(toolbar);
        }
    }

    public void showStartupFragment() {
        getChildFragmentManager().beginTransaction().replace(getContainerId(), getStartupFragment()).commit();
    }

    protected void setToolbarActionBar(Toolbar toolbar) {
        ((AppCompatActivity) getActivity()).setSupportActionBar(toolbar);
    }

    protected void setToolbarSize(Toolbar toolbar, int i) {
        LayoutParams layoutParams = toolbar.getLayoutParams();
        layoutParams.height += i;
        toolbar.setPadding(0, i, 0, 0);
        toolbar.setLayoutParams(layoutParams);
    }

    protected int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        return identifier > 0 ? getResources().getDimensionPixelSize(identifier) : 0;
    }
}
