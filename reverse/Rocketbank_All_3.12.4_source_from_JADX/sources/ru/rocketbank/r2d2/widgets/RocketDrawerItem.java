package ru.rocketbank.r2d2.widgets;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import com.mikepenz.materialdrawer.model.PrimaryDrawerItem;
import com.mikepenz.materialdrawer.model.interfaces.IDrawerItem;
import ru.rocketbank.r2d2.C0859R;

public class RocketDrawerItem extends PrimaryDrawerItem implements RocketDrawer<RocketDrawerItem> {
    private Class<? extends Fragment> fragmentClass;
    private String fragmentTag;
    private int iconGravity = -1;

    public int getLayoutRes() {
        return C0859R.layout.rocket_material_drawer_item_primary;
    }

    protected int getSelectedColor(Context context) {
        return ContextCompat.getColor(context, C0859R.color.transparent);
    }

    public PrimaryDrawerItem withDescription(int i) {
        withIconGravityTop();
        return (PrimaryDrawerItem) super.withDescription(i);
    }

    public PrimaryDrawerItem withDescription(String str) {
        withIconGravityTop();
        return (PrimaryDrawerItem) super.withDescription(str);
    }

    private RocketDrawerItem withIconGravityTop() {
        this.iconGravity = 48;
        return this;
    }

    public RocketDrawerItem withFragment(Class<? extends Fragment> cls, String str) {
        this.fragmentClass = cls;
        this.fragmentTag = str;
        return this;
    }

    public RocketDrawerItem withFragment(Class<? extends Fragment> cls) {
        this.fragmentClass = cls;
        this.fragmentTag = cls.getName();
        return this;
    }

    public RocketDrawerItem withoutBadge() {
        this.mBadge = null;
        return this;
    }

    public Class<? extends Fragment> getFragmentClass() {
        return this.fragmentClass;
    }

    public String getFragmentTag() {
        return this.fragmentTag;
    }

    public void onPostBindView(IDrawerItem iDrawerItem, View view) {
        if (this.iconGravity != -1) {
            ((LayoutParams) ((ImageView) view.findViewById(C0859R.id.material_drawer_icon)).getLayoutParams()).gravity = this.iconGravity;
        }
        super.onPostBindView(iDrawerItem, view);
    }
}
