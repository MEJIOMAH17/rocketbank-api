package ru.rocketbank.r2d2.widgets;

import android.support.v4.app.Fragment;
import com.mikepenz.materialdrawer.Drawer.OnDrawerItemClickListener;
import com.mikepenz.materialdrawer.model.BaseDrawerItem;

public interface RocketDrawer<T extends BaseDrawerItem> {
    Class<? extends Fragment> getFragmentClass();

    String getFragmentTag();

    OnDrawerItemClickListener getOnDrawerItemClickListener();

    T withFragment(Class<? extends Fragment> cls);

    T withFragment(Class<? extends Fragment> cls, String str);
}
