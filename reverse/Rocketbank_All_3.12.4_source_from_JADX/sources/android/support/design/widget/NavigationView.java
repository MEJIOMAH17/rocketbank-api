package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.annotation.RestrictTo;
import android.support.design.C0039R;
import android.support.design.internal.NavigationMenu;
import android.support.design.internal.NavigationMenuPresenter;
import android.support.design.internal.ScrimInsetsFrameLayout;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import ru.rocketbank.r2d2.C0859R;

public class NavigationView extends ScrimInsetsFrameLayout {
    private static final int[] CHECKED_STATE_SET = new int[]{16842912};
    private static final int[] DISABLED_STATE_SET = new int[]{-16842910};
    private static final int PRESENTER_NAVIGATION_VIEW_ID = 1;
    OnNavigationItemSelectedListener mListener;
    private int mMaxWidth;
    private final NavigationMenu mMenu;
    private MenuInflater mMenuInflater;
    private final NavigationMenuPresenter mPresenter;

    public interface OnNavigationItemSelectedListener {
        boolean onNavigationItemSelected(MenuItem menuItem);
    }

    /* renamed from: android.support.design.widget.NavigationView$1 */
    class C09051 implements Callback {
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }

        C09051() {
        }

        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            return (NavigationView.this.mListener == null || NavigationView.this.mListener.onNavigationItemSelected(menuItem) == null) ? null : true;
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Creator<SavedState> CREATOR = new C00621();
        public Bundle menuState;

        /* renamed from: android.support.design.widget.NavigationView$SavedState$1 */
        static class C00621 implements ClassLoaderCreator<SavedState> {
            C00621() {
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

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.menuState = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.menuState);
        }
    }

    public NavigationView(Context context) {
        this(context, null);
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationView(Context context, AttributeSet attributeSet, int i) {
        int resourceId;
        int i2;
        super(context, attributeSet, i);
        this.mPresenter = new NavigationMenuPresenter();
        ThemeUtils.checkAppCompatTheme(context);
        this.mMenu = new NavigationMenu(context);
        attributeSet = TintTypedArray.obtainStyledAttributes(context, attributeSet, C0039R.styleable.NavigationView, i, C0039R.style.Widget_Design_NavigationView);
        ViewCompat.setBackground(this, attributeSet.getDrawable(C0039R.styleable.NavigationView_android_background));
        if (attributeSet.hasValue(C0039R.styleable.NavigationView_elevation) != 0) {
            ViewCompat.setElevation(this, (float) attributeSet.getDimensionPixelSize(C0039R.styleable.NavigationView_elevation, 0));
        }
        ViewCompat.setFitsSystemWindows(this, attributeSet.getBoolean(C0039R.styleable.NavigationView_android_fitsSystemWindows, false));
        this.mMaxWidth = attributeSet.getDimensionPixelSize(C0039R.styleable.NavigationView_android_maxWidth, 0);
        if (attributeSet.hasValue(C0039R.styleable.NavigationView_itemIconTint) != 0) {
            i = attributeSet.getColorStateList(C0039R.styleable.NavigationView_itemIconTint);
        } else {
            i = createDefaultColorStateList(16842808);
        }
        if (attributeSet.hasValue(C0039R.styleable.NavigationView_itemTextAppearance)) {
            resourceId = attributeSet.getResourceId(C0039R.styleable.NavigationView_itemTextAppearance, 0);
            i2 = 1;
        } else {
            i2 = false;
            resourceId = i2;
        }
        ColorStateList colorStateList = null;
        if (attributeSet.hasValue(C0039R.styleable.NavigationView_itemTextColor)) {
            colorStateList = attributeSet.getColorStateList(C0039R.styleable.NavigationView_itemTextColor);
        }
        if (i2 == 0 && r4 == null) {
            colorStateList = createDefaultColorStateList(16842806);
        }
        Drawable drawable = attributeSet.getDrawable(C0039R.styleable.NavigationView_itemBackground);
        this.mMenu.setCallback(new C09051());
        this.mPresenter.setId(1);
        this.mPresenter.initForMenu(context, this.mMenu);
        this.mPresenter.setItemIconTintList(i);
        if (i2 != 0) {
            this.mPresenter.setItemTextAppearance(resourceId);
        }
        this.mPresenter.setItemTextColor(colorStateList);
        this.mPresenter.setItemBackground(drawable);
        this.mMenu.addMenuPresenter(this.mPresenter);
        addView((View) this.mPresenter.getMenuView(this));
        if (attributeSet.hasValue(C0039R.styleable.NavigationView_menu) != null) {
            inflateMenu(attributeSet.getResourceId(C0039R.styleable.NavigationView_menu, 0));
        }
        if (attributeSet.hasValue(C0039R.styleable.NavigationView_headerLayout) != null) {
            inflateHeaderView(attributeSet.getResourceId(C0039R.styleable.NavigationView_headerLayout, 0));
        }
        attributeSet.recycle();
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.menuState = new Bundle();
        this.mMenu.savePresenterStates(savedState.menuState);
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            this.mMenu.restorePresenterStates(savedState.menuState);
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    public void setNavigationItemSelectedListener(OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.mListener = onNavigationItemSelectedListener;
    }

    protected void onMeasure(int i, int i2) {
        int mode = MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE) {
            i = MeasureSpec.makeMeasureSpec(Math.min(MeasureSpec.getSize(i), this.mMaxWidth), 1073741824);
        } else if (mode == 0) {
            i = MeasureSpec.makeMeasureSpec(this.mMaxWidth, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @RestrictTo
    protected void onInsetsChanged(WindowInsetsCompat windowInsetsCompat) {
        this.mPresenter.dispatchApplyWindowInsets(windowInsetsCompat);
    }

    public void inflateMenu(int i) {
        this.mPresenter.setUpdateSuspended(true);
        getMenuInflater().inflate(i, this.mMenu);
        this.mPresenter.setUpdateSuspended(false);
        this.mPresenter.updateMenuView(false);
    }

    public Menu getMenu() {
        return this.mMenu;
    }

    public View inflateHeaderView(int i) {
        return this.mPresenter.inflateHeaderView(i);
    }

    public void addHeaderView(View view) {
        this.mPresenter.addHeaderView(view);
    }

    public void removeHeaderView(View view) {
        this.mPresenter.removeHeaderView(view);
    }

    public int getHeaderCount() {
        return this.mPresenter.getHeaderCount();
    }

    public View getHeaderView(int i) {
        return this.mPresenter.getHeaderView(i);
    }

    public ColorStateList getItemIconTintList() {
        return this.mPresenter.getItemTintList();
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.mPresenter.setItemIconTintList(colorStateList);
    }

    public ColorStateList getItemTextColor() {
        return this.mPresenter.getItemTextColor();
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.mPresenter.setItemTextColor(colorStateList);
    }

    public Drawable getItemBackground() {
        return this.mPresenter.getItemBackground();
    }

    public void setItemBackgroundResource(int i) {
        setItemBackground(ContextCompat.getDrawable(getContext(), i));
    }

    public void setItemBackground(Drawable drawable) {
        this.mPresenter.setItemBackground(drawable);
    }

    public void setCheckedItem(int i) {
        i = this.mMenu.findItem(i);
        if (i != 0) {
            this.mPresenter.setCheckedItem((MenuItemImpl) i);
        }
    }

    public void setItemTextAppearance(int i) {
        this.mPresenter.setItemTextAppearance(i);
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
}
