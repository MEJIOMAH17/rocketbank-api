package ru.rocketbank.r2d2.widgets;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.widget.TextView;
import com.mikepenz.materialdrawer.model.BaseSecondaryDrawerItem.BaseViewHolder;
import com.mikepenz.materialdrawer.model.SecondaryDrawerItem;
import ru.rocketbank.r2d2.C0859R;

public class RocketDrawerDescriptionItem extends SecondaryDrawerItem implements RocketDrawer<RocketDrawerDescriptionItem> {
    private Class<? extends Fragment> fragmentClass;
    private String fragmentTag;

    public int getLayoutRes() {
        return C0859R.layout.rocket_material_drawer_item_primary_with_description;
    }

    protected void bindViewHelper(BaseViewHolder baseViewHolder) {
        super.bindViewHelper(baseViewHolder);
        TextView textView = (TextView) baseViewHolder.itemView.findViewById(C0859R.id.material_drawer_description);
        if (textView != null) {
            textView.setTextColor(getTextColorStateList(ContextCompat.getColor(textView.getContext(), C0859R.color.drawer_item_primary_description_color), getSelectedTextColor(textView.getContext())));
        }
    }

    protected int getSelectedColor(Context context) {
        return ContextCompat.getColor(context, C0859R.color.transparent);
    }

    public RocketDrawerDescriptionItem withFragment(Class<? extends Fragment> cls) {
        this.fragmentClass = cls;
        this.fragmentTag = cls.getName();
        return this;
    }

    public Class<? extends Fragment> getFragmentClass() {
        return this.fragmentClass;
    }

    public String getFragmentTag() {
        return this.fragmentTag;
    }

    public RocketDrawerDescriptionItem withFragment(Class<? extends Fragment> cls, String str) {
        this.fragmentClass = cls;
        this.fragmentTag = str;
        return this;
    }
}
