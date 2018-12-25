package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.C0219R;
import android.support.v7.view.menu.MenuView.ItemView;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup.LayoutParams;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import ru.rocketbank.r2d2.C0859R;

@RestrictTo
public class ListMenuItemView extends LinearLayout implements ItemView {
    private Drawable mBackground;
    private CheckBox mCheckBox;
    private boolean mForceShowIcon;
    private ImageView mIconView;
    private LayoutInflater mInflater;
    private MenuItemImpl mItemData;
    private int mMenuType;
    private boolean mPreserveIconSpacing;
    private RadioButton mRadioButton;
    private TextView mShortcutView;
    private Drawable mSubMenuArrow;
    private ImageView mSubMenuArrowView;
    private int mTextAppearance;
    private Context mTextAppearanceContext;
    private TextView mTitleView;

    public boolean prefersCondensedTitle() {
        return false;
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0859R.attr.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        attributeSet = TintTypedArray.obtainStyledAttributes(getContext(), attributeSet, C0219R.styleable.MenuView, i, 0);
        this.mBackground = attributeSet.getDrawable(C0219R.styleable.MenuView_android_itemBackground);
        this.mTextAppearance = attributeSet.getResourceId(C0219R.styleable.MenuView_android_itemTextAppearance, -1);
        this.mPreserveIconSpacing = attributeSet.getBoolean(C0219R.styleable.MenuView_preserveIconSpacing, false);
        this.mTextAppearanceContext = context;
        this.mSubMenuArrow = attributeSet.getDrawable(C0219R.styleable.MenuView_subMenuArrow);
        attributeSet.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        ViewCompat.setBackground(this, this.mBackground);
        this.mTitleView = (TextView) findViewById(C0859R.id.title);
        if (this.mTextAppearance != -1) {
            this.mTitleView.setTextAppearance(this.mTextAppearanceContext, this.mTextAppearance);
        }
        this.mShortcutView = (TextView) findViewById(C0859R.id.shortcut);
        this.mSubMenuArrowView = (ImageView) findViewById(C0859R.id.submenuarrow);
        if (this.mSubMenuArrowView != null) {
            this.mSubMenuArrowView.setImageDrawable(this.mSubMenuArrow);
        }
    }

    public void initialize(MenuItemImpl menuItemImpl, int i) {
        int i2;
        ImageView imageView;
        this.mItemData = menuItemImpl;
        this.mMenuType = i;
        int i3 = 0;
        setVisibility(menuItemImpl.isVisible() != 0 ? 0 : 8);
        if (prefersCondensedTitle() != 0) {
            i = menuItemImpl.getTitleCondensed();
        } else {
            i = menuItemImpl.getTitle();
        }
        if (i != 0) {
            this.mTitleView.setText(i);
            if (this.mTitleView.getVisibility() != 0) {
                this.mTitleView.setVisibility(0);
            }
        } else if (this.mTitleView.getVisibility() != 8) {
            this.mTitleView.setVisibility(8);
        }
        i = menuItemImpl.isCheckable();
        if (!(i == 0 && this.mRadioButton == null && this.mCheckBox == null)) {
            CompoundButton compoundButton;
            CompoundButton compoundButton2;
            if (this.mItemData.isExclusiveCheckable()) {
                if (this.mRadioButton == null) {
                    if (this.mInflater == null) {
                        this.mInflater = LayoutInflater.from(getContext());
                    }
                    this.mRadioButton = (RadioButton) this.mInflater.inflate(C0859R.layout.abc_list_menu_item_radio, this, false);
                    addView(this.mRadioButton);
                }
                compoundButton = this.mRadioButton;
                compoundButton2 = this.mCheckBox;
            } else {
                if (this.mCheckBox == null) {
                    if (this.mInflater == null) {
                        this.mInflater = LayoutInflater.from(getContext());
                    }
                    this.mCheckBox = (CheckBox) this.mInflater.inflate(C0859R.layout.abc_list_menu_item_checkbox, this, false);
                    addView(this.mCheckBox);
                }
                compoundButton = this.mCheckBox;
                compoundButton2 = this.mRadioButton;
            }
            if (i != 0) {
                compoundButton.setChecked(this.mItemData.isChecked());
                i = i != 0 ? 0 : 8;
                if (compoundButton.getVisibility() != i) {
                    compoundButton.setVisibility(i);
                }
                if (!(compoundButton2 == null || compoundButton2.getVisibility() == 8)) {
                    compoundButton2.setVisibility(8);
                }
            } else {
                if (this.mCheckBox != 0) {
                    this.mCheckBox.setVisibility(8);
                }
                if (this.mRadioButton != 0) {
                    this.mRadioButton.setVisibility(8);
                }
            }
        }
        i = menuItemImpl.shouldShowShortcut();
        menuItemImpl.getShortcut();
        i = (i == 0 || this.mItemData.shouldShowShortcut() == 0) ? 8 : 0;
        if (i == 0) {
            CharSequence charSequence;
            TextView textView = this.mShortcutView;
            char shortcut = this.mItemData.getShortcut();
            if (shortcut == '\u0000') {
                charSequence = "";
            } else {
                StringBuilder stringBuilder = new StringBuilder(null);
                if (shortcut == '\b') {
                    stringBuilder.append(null);
                } else if (shortcut == '\n') {
                    stringBuilder.append(null);
                } else if (shortcut != ' ') {
                    stringBuilder.append(shortcut);
                } else {
                    stringBuilder.append(null);
                }
                charSequence = stringBuilder.toString();
            }
            textView.setText(charSequence);
        }
        if (this.mShortcutView.getVisibility() != i) {
            this.mShortcutView.setVisibility(i);
        }
        i = menuItemImpl.getIcon();
        if (!this.mItemData.mMenu.getOptionalIconsVisible()) {
            if (!this.mForceShowIcon) {
                i2 = 0;
                if ((i2 != 0 || this.mPreserveIconSpacing) && !(this.mIconView == null && i == 0 && !this.mPreserveIconSpacing)) {
                    if (this.mIconView == null) {
                        if (this.mInflater == null) {
                            this.mInflater = LayoutInflater.from(getContext());
                        }
                        this.mIconView = (ImageView) this.mInflater.inflate(C0859R.layout.abc_list_menu_item_icon, this, false);
                        addView(this.mIconView, 0);
                    }
                    if (i == 0) {
                        if (this.mPreserveIconSpacing) {
                            this.mIconView.setVisibility(8);
                        }
                    }
                    imageView = this.mIconView;
                    if (i2 != 0) {
                        i = 0;
                    }
                    imageView.setImageDrawable(i);
                    if (this.mIconView.getVisibility() != 0) {
                        this.mIconView.setVisibility(0);
                    }
                }
                setEnabled(menuItemImpl.isEnabled());
                i = menuItemImpl.hasSubMenu();
                if (this.mSubMenuArrowView != null) {
                    ImageView imageView2 = this.mSubMenuArrowView;
                    if (i != 0) {
                        i3 = 8;
                    }
                    imageView2.setVisibility(i3);
                }
                setContentDescription(menuItemImpl.getContentDescription());
            }
        }
        i2 = 1;
        if (this.mIconView == null) {
            if (this.mInflater == null) {
                this.mInflater = LayoutInflater.from(getContext());
            }
            this.mIconView = (ImageView) this.mInflater.inflate(C0859R.layout.abc_list_menu_item_icon, this, false);
            addView(this.mIconView, 0);
        }
        if (i == 0) {
            if (this.mPreserveIconSpacing) {
                this.mIconView.setVisibility(8);
                setEnabled(menuItemImpl.isEnabled());
                i = menuItemImpl.hasSubMenu();
                if (this.mSubMenuArrowView != null) {
                    ImageView imageView22 = this.mSubMenuArrowView;
                    if (i != 0) {
                        i3 = 8;
                    }
                    imageView22.setVisibility(i3);
                }
                setContentDescription(menuItemImpl.getContentDescription());
            }
        }
        imageView = this.mIconView;
        if (i2 != 0) {
            i = 0;
        }
        imageView.setImageDrawable(i);
        if (this.mIconView.getVisibility() != 0) {
            this.mIconView.setVisibility(0);
        }
        setEnabled(menuItemImpl.isEnabled());
        i = menuItemImpl.hasSubMenu();
        if (this.mSubMenuArrowView != null) {
            ImageView imageView222 = this.mSubMenuArrowView;
            if (i != 0) {
                i3 = 8;
            }
            imageView222.setVisibility(i3);
        }
        setContentDescription(menuItemImpl.getContentDescription());
    }

    public final void setForceShowIcon$1385ff() {
        this.mForceShowIcon = true;
        this.mPreserveIconSpacing = true;
    }

    public MenuItemImpl getItemData() {
        return this.mItemData;
    }

    protected void onMeasure(int i, int i2) {
        if (this.mIconView != null && this.mPreserveIconSpacing) {
            LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.mIconView.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i, i2);
    }
}
