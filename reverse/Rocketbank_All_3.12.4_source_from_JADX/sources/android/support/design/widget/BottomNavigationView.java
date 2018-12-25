package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.design.C0039R;
import android.support.design.internal.BottomNavigationMenu;
import android.support.design.internal.BottomNavigationMenuView;
import android.support.design.internal.BottomNavigationPresenter;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ViewCompat;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import ru.rocketbank.r2d2.C0859R;

public class BottomNavigationView extends FrameLayout {
    private static final int[] CHECKED_STATE_SET = new int[]{16842912};
    private static final int[] DISABLED_STATE_SET = new int[]{-16842910};
    private static final int MENU_PRESENTER_ID = 1;
    private final MenuBuilder mMenu;
    private MenuInflater mMenuInflater;
    private final BottomNavigationMenuView mMenuView;
    private final BottomNavigationPresenter mPresenter;
    private OnNavigationItemReselectedListener mReselectedListener;
    private OnNavigationItemSelectedListener mSelectedListener;

    public interface OnNavigationItemReselectedListener {
        void onNavigationItemReselected(MenuItem menuItem);
    }

    public interface OnNavigationItemSelectedListener {
        boolean onNavigationItemSelected(MenuItem menuItem);
    }

    /* renamed from: android.support.design.widget.BottomNavigationView$1 */
    class C08971 implements Callback {
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }

        C08971() {
        }

        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            if (BottomNavigationView.this.mReselectedListener != null && menuItem.getItemId() == BottomNavigationView.this.getSelectedItemId()) {
                BottomNavigationView.this.mReselectedListener.onNavigationItemReselected(menuItem);
                return true;
            } else if (BottomNavigationView.this.mSelectedListener == null || BottomNavigationView.this.mSelectedListener.onNavigationItemSelected(menuItem) != null) {
                return null;
            } else {
                return true;
            }
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Creator<SavedState> CREATOR = new C00521();
        Bundle menuPresenterState;

        /* renamed from: android.support.design.widget.BottomNavigationView$SavedState$1 */
        static class C00521 implements ClassLoaderCreator<SavedState> {
            C00521() {
            }

            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            public final SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            readFromParcel(parcel, classLoader);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.menuPresenterState);
        }

        private void readFromParcel(Parcel parcel, ClassLoader classLoader) {
            this.menuPresenterState = parcel.readBundle(classLoader);
        }
    }

    public int getMaxItemCount() {
        return 5;
    }

    public BottomNavigationView(Context context) {
        this(context, null);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPresenter = new BottomNavigationPresenter();
        ThemeUtils.checkAppCompatTheme(context);
        this.mMenu = new BottomNavigationMenu(context);
        this.mMenuView = new BottomNavigationMenuView(context);
        LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.mMenuView.setLayoutParams(layoutParams);
        this.mPresenter.setBottomNavigationMenuView(this.mMenuView);
        this.mPresenter.setId(1);
        this.mMenuView.setPresenter(this.mPresenter);
        this.mMenu.addMenuPresenter(this.mPresenter);
        this.mPresenter.initForMenu(getContext(), this.mMenu);
        attributeSet = TintTypedArray.obtainStyledAttributes(context, attributeSet, C0039R.styleable.BottomNavigationView, i, C0039R.style.Widget_Design_BottomNavigationView);
        if (attributeSet.hasValue(C0039R.styleable.BottomNavigationView_itemIconTint) != 0) {
            this.mMenuView.setIconTintList(attributeSet.getColorStateList(C0039R.styleable.BottomNavigationView_itemIconTint));
        } else {
            this.mMenuView.setIconTintList(createDefaultColorStateList(16842808));
        }
        if (attributeSet.hasValue(C0039R.styleable.BottomNavigationView_itemTextColor) != 0) {
            this.mMenuView.setItemTextColor(attributeSet.getColorStateList(C0039R.styleable.BottomNavigationView_itemTextColor));
        } else {
            this.mMenuView.setItemTextColor(createDefaultColorStateList(16842808));
        }
        if (attributeSet.hasValue(C0039R.styleable.BottomNavigationView_elevation) != 0) {
            ViewCompat.setElevation(this, (float) attributeSet.getDimensionPixelSize(C0039R.styleable.BottomNavigationView_elevation, 0));
        }
        this.mMenuView.setItemBackgroundRes(attributeSet.getResourceId(C0039R.styleable.BottomNavigationView_itemBackground, 0));
        if (attributeSet.hasValue(C0039R.styleable.BottomNavigationView_menu) != 0) {
            inflateMenu(attributeSet.getResourceId(C0039R.styleable.BottomNavigationView_menu, 0));
        }
        attributeSet.recycle();
        addView(this.mMenuView, layoutParams);
        if (VERSION.SDK_INT < 21) {
            addCompatibilityTopDivider(context);
        }
        this.mMenu.setCallback(new C08971());
    }

    public void setOnNavigationItemSelectedListener(OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.mSelectedListener = onNavigationItemSelectedListener;
    }

    public void setOnNavigationItemReselectedListener(OnNavigationItemReselectedListener onNavigationItemReselectedListener) {
        this.mReselectedListener = onNavigationItemReselectedListener;
    }

    public Menu getMenu() {
        return this.mMenu;
    }

    public void inflateMenu(int i) {
        this.mPresenter.setUpdateSuspended(true);
        getMenuInflater().inflate(i, this.mMenu);
        this.mPresenter.setUpdateSuspended(false);
        this.mPresenter.updateMenuView(true);
    }

    public ColorStateList getItemIconTintList() {
        return this.mMenuView.getIconTintList();
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.mMenuView.setIconTintList(colorStateList);
    }

    public ColorStateList getItemTextColor() {
        return this.mMenuView.getItemTextColor();
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.mMenuView.setItemTextColor(colorStateList);
    }

    public int getItemBackgroundResource() {
        return this.mMenuView.getItemBackgroundRes();
    }

    public void setItemBackgroundResource(int i) {
        this.mMenuView.setItemBackgroundRes(i);
    }

    public int getSelectedItemId() {
        return this.mMenuView.getSelectedItemId();
    }

    public void setSelectedItemId(int i) {
        i = this.mMenu.findItem(i);
        if (i != 0 && !this.mMenu.performItemAction(i, this.mPresenter, 0)) {
            i.setChecked(true);
        }
    }

    private void addCompatibilityTopDivider(Context context) {
        View view = new View(context);
        view.setBackgroundColor(ContextCompat.getColor(context, C0039R.color.design_bottom_navigation_shadow_color));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(C0039R.dimen.design_bottom_navigation_shadow_height)));
        addView(view);
    }

    private MenuInflater getMenuInflater() {
        if (this.mMenuInflater == null) {
            this.mMenuInflater = new SupportMenuInflater(getContext());
        }
        return this.mMenuInflater;
    }

    private ColorStateList createDefaultColorStateList(int i) {
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(i, typedValue, true) == 0) {
            return null;
        }
        i = AppCompatResources.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(C0859R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = i.getDefaultColor();
        return new ColorStateList(new int[][]{DISABLED_STATE_SET, CHECKED_STATE_SET, EMPTY_STATE_SET}, new int[]{i.getColorForState(DISABLED_STATE_SET, defaultColor), i2, defaultColor});
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.menuPresenterState = new Bundle();
        this.mMenu.savePresenterStates(savedState.menuPresenterState);
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            this.mMenu.restorePresenterStates(savedState.menuPresenterState);
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
