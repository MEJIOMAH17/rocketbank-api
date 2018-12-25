package com.mikepenz.materialdrawer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build.VERSION;
import android.support.v4.content.pm.ShortcutManagerCompat;
import android.support.v4.content.res.FontResourcesParserCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.appcompat.C0219R.id;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import com.mikepenz.materialdrawer.model.ContainerDrawerItem;
import com.mikepenz.materialdrawer.model.ContainerDrawerItem.Position;
import com.mikepenz.materialdrawer.model.PrimaryDrawerItem;
import com.mikepenz.materialdrawer.model.SecondaryDrawerItem;
import com.mikepenz.materialdrawer.model.interfaces.IDrawerItem;
import com.mikepenz.materialdrawer.model.interfaces.Selectable;
import com.mikepenz.materialdrawer.util.DrawerUIUtils;
import com.mikepenz.materialize.util.UIUtils;
import ru.rocketbank.r2d2.C0859R;

public final class DrawerUtils implements Transformation<GifBitmapWrapper> {
    private final Transformation<Bitmap> bitmapTransformation;
    private final Transformation<GifDrawable> gifDataTransformation;

    public static void onFooterDrawerItemClick(DrawerBuilder drawerBuilder, IDrawerItem iDrawerItem, View view, Boolean bool) {
        boolean z;
        LinearLayout linearLayout;
        int i;
        boolean z2 = false;
        if (iDrawerItem != null && (iDrawerItem instanceof Selectable)) {
            if (!((Selectable) iDrawerItem).isSelectable()) {
                z = false;
                if (z) {
                    drawerBuilder.resetStickyFooterSelection();
                    if (VERSION.SDK_INT >= 11) {
                        view.setActivated(true);
                    }
                    view.setSelected(true);
                    drawerBuilder.getAdapter().handleSelection(null, -1);
                    drawerBuilder.mCurrentSelection = -1;
                    if (drawerBuilder.mStickyFooterView != null && (drawerBuilder.mStickyFooterView instanceof LinearLayout)) {
                        linearLayout = (LinearLayout) drawerBuilder.mStickyFooterView;
                        for (i = 0; i < linearLayout.getChildCount(); i++) {
                            if (linearLayout.getChildAt(i) == view) {
                                drawerBuilder.mCurrentStickyFooterSelection = i;
                                break;
                            }
                        }
                    }
                }
                if (bool != null) {
                    if (!(bool.booleanValue() == null || drawerBuilder.mOnDrawerItemClickListener == null)) {
                        z2 = drawerBuilder.mOnDrawerItemClickListener.onItemClick(view, -1, iDrawerItem);
                    }
                    if (!z2) {
                        drawerBuilder.closeDrawerDelayed();
                    }
                }
            }
        }
        z = true;
        if (z) {
            drawerBuilder.resetStickyFooterSelection();
            if (VERSION.SDK_INT >= 11) {
                view.setActivated(true);
            }
            view.setSelected(true);
            drawerBuilder.getAdapter().handleSelection(null, -1);
            drawerBuilder.mCurrentSelection = -1;
            linearLayout = (LinearLayout) drawerBuilder.mStickyFooterView;
            for (i = 0; i < linearLayout.getChildCount(); i++) {
                if (linearLayout.getChildAt(i) == view) {
                    drawerBuilder.mCurrentStickyFooterSelection = i;
                    break;
                }
            }
        }
        if (bool != null) {
            z2 = drawerBuilder.mOnDrawerItemClickListener.onItemClick(view, -1, iDrawerItem);
            if (!z2) {
                drawerBuilder.closeDrawerDelayed();
            }
        }
    }

    public static boolean setRecyclerViewSelection$4633d628(DrawerBuilder drawerBuilder, int i) {
        if (i >= -1 && drawerBuilder.mAdapter != null) {
            drawerBuilder.resetStickyFooterSelection();
            drawerBuilder.mAdapter.handleSelection(null, i);
            drawerBuilder.mCurrentSelection = i;
            drawerBuilder.mCurrentStickyFooterSelection = -1;
        }
        return null;
    }

    public static int getPositionByIdentifier(DrawerBuilder drawerBuilder, int i) {
        if (i >= 0) {
            drawerBuilder = drawerBuilder.getAdapter();
            for (int i2 = 0; i2 < drawerBuilder.getItemCount(); i2++) {
                if (drawerBuilder.getItem(i2).getIdentifier() == i) {
                    return i2;
                }
            }
        }
        return -1;
    }

    public static void handleHeaderView(DrawerBuilder drawerBuilder) {
        if (drawerBuilder.mHeaderView == null) {
            return;
        }
        if (drawerBuilder.mRecyclerView == null) {
            throw new RuntimeException("can't use a headerView without a recyclerView");
        }
        if (drawerBuilder.mHeaderPadding) {
            drawerBuilder.getAdapter().addHeaderDrawerItems(new ContainerDrawerItem().withView(drawerBuilder.mHeaderView).withDivider(drawerBuilder.mHeaderDivider).withViewPosition(Position.TOP));
        } else {
            drawerBuilder.getAdapter().addHeaderDrawerItems(new ContainerDrawerItem().withView(drawerBuilder.mHeaderView).withDivider(drawerBuilder.mHeaderDivider).withViewPosition(Position.NONE));
        }
        drawerBuilder.mRecyclerView.setPadding(drawerBuilder.mRecyclerView.getPaddingLeft(), 0, drawerBuilder.mRecyclerView.getPaddingRight(), drawerBuilder.mRecyclerView.getPaddingBottom());
    }

    public static void handleFooterView(DrawerBuilder drawerBuilder, OnClickListener onClickListener) {
        Context context = drawerBuilder.mSliderLayout.getContext();
        if (drawerBuilder.mStickyDrawerItems != null && drawerBuilder.mStickyDrawerItems.size() > 0) {
            int i;
            ViewGroup linearLayout = new LinearLayout(context);
            linearLayout.setLayoutParams(new LayoutParams(-1, -2));
            linearLayout.setOrientation(1);
            TypedValue typedValue = new TypedValue();
            if (context.getTheme().resolveAttribute(C0859R.attr.material_drawer_background, typedValue, true)) {
                i = typedValue.data;
            } else {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getColor(C0859R.color.material_drawer_background);
            }
            linearLayout.setBackgroundColor(i);
            fillStickyDrawerItemFooter(drawerBuilder, linearLayout, onClickListener);
            drawerBuilder.mStickyFooterView = linearLayout;
        }
        if (drawerBuilder.mStickyFooterView != null) {
            onClickListener = new RelativeLayout.LayoutParams(-1, -2);
            onClickListener.addRule(12, 1);
            drawerBuilder.mStickyFooterView.setId(C0859R.id.material_drawer_sticky_footer);
            drawerBuilder.mSliderLayout.addView(drawerBuilder.mStickyFooterView, onClickListener);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) drawerBuilder.mRecyclerView.getLayoutParams();
            layoutParams.addRule(2, C0859R.id.material_drawer_sticky_footer);
            drawerBuilder.mRecyclerView.setLayoutParams(layoutParams);
            if (drawerBuilder.mStickyFooterShadow != null) {
                drawerBuilder.mStickyFooterShadowView = new View(context);
                drawerBuilder.mStickyFooterShadowView.setBackgroundResource(C0859R.drawable.material_drawer_shadow_top);
                drawerBuilder.mSliderLayout.addView(drawerBuilder.mStickyFooterShadowView, -1, (int) (4.0f * (((float) context.getResources().getDisplayMetrics().densityDpi) / 160.0f)));
                layoutParams = (RelativeLayout.LayoutParams) drawerBuilder.mStickyFooterShadowView.getLayoutParams();
                layoutParams.addRule(2, C0859R.id.material_drawer_sticky_footer);
                drawerBuilder.mStickyFooterShadowView.setLayoutParams(layoutParams);
            }
            drawerBuilder.mRecyclerView.setPadding(drawerBuilder.mRecyclerView.getPaddingLeft(), drawerBuilder.mRecyclerView.getPaddingTop(), drawerBuilder.mRecyclerView.getPaddingRight(), context.getResources().getDimensionPixelSize(C0859R.dimen.material_drawer_padding));
        }
    }

    private static void fillStickyDrawerItemFooter(DrawerBuilder drawerBuilder, ViewGroup viewGroup, OnClickListener onClickListener) {
        drawerBuilder = drawerBuilder.mStickyDrawerItems.iterator();
        while (drawerBuilder.hasNext()) {
            int i;
            IDrawerItem iDrawerItem = (IDrawerItem) drawerBuilder.next();
            Context context = viewGroup.getContext();
            TypedValue typedValue = new TypedValue();
            if (context.getTheme().resolveAttribute(C0859R.attr.material_drawer_selected, typedValue, true)) {
                i = typedValue.data;
            } else {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getColor(C0859R.color.material_drawer_selected);
            }
            if (iDrawerItem instanceof PrimaryDrawerItem) {
                i = id.color$54b3a3d9(((PrimaryDrawerItem) iDrawerItem).getSelectedColor(), viewGroup.getContext(), C0859R.attr.material_drawer_selected, C0859R.color.material_drawer_selected);
            } else if (iDrawerItem instanceof SecondaryDrawerItem) {
                i = id.color$54b3a3d9(((SecondaryDrawerItem) iDrawerItem).getSelectedColor(), viewGroup.getContext(), C0859R.attr.material_drawer_selected, C0859R.color.material_drawer_selected);
            }
            View generateView = iDrawerItem.generateView(viewGroup.getContext(), viewGroup);
            generateView.setTag(iDrawerItem);
            if (iDrawerItem.isEnabled()) {
                Context context2 = viewGroup.getContext();
                Drawable colorDrawable = new ColorDrawable(i);
                Drawable stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(new int[]{16842913}, colorDrawable);
                stateListDrawable.addState(new int[0], UIUtils.getCompatDrawable(context2, DrawerUIUtils.getSelectableBackground(context2)));
                if (VERSION.SDK_INT < 16) {
                    generateView.setBackgroundDrawable(stateListDrawable);
                } else {
                    generateView.setBackground(stateListDrawable);
                }
                generateView.setOnClickListener(onClickListener);
            }
            viewGroup.addView(generateView);
            int dimensionPixelSize = generateView.getContext().getResources().getDimensionPixelSize(C0859R.dimen.material_drawer_vertical_padding);
            generateView.setPadding(dimensionPixelSize, 0, dimensionPixelSize, 0);
        }
        viewGroup.setPadding(0, 0, 0, 0);
    }

    public static DrawerLayout.LayoutParams processDrawerLayoutParams(DrawerBuilder drawerBuilder, DrawerLayout.LayoutParams layoutParams) {
        if (layoutParams != null) {
            if (drawerBuilder.mDrawerGravity != null && (drawerBuilder.mDrawerGravity.intValue() == 5 || drawerBuilder.mDrawerGravity.intValue() == GravityCompat.END)) {
                layoutParams.rightMargin = 0;
                if (VERSION.SDK_INT >= 17) {
                    layoutParams.setMarginEnd(0);
                }
                layoutParams.leftMargin = drawerBuilder.mActivity.getResources().getDimensionPixelSize(C0859R.dimen.material_drawer_margin);
                if (VERSION.SDK_INT >= 17) {
                    layoutParams.setMarginEnd(drawerBuilder.mActivity.getResources().getDimensionPixelSize(C0859R.dimen.material_drawer_margin));
                }
            }
            if (drawerBuilder.mDrawerWidth >= 0) {
                layoutParams.width = drawerBuilder.mDrawerWidth;
            } else {
                drawerBuilder = drawerBuilder.mActivity;
                int i = drawerBuilder.getResources().getDisplayMetrics().widthPixels;
                int themeAttributeDimensionSize$1a54e363 = UIUtils.getThemeAttributeDimensionSize$1a54e363(drawerBuilder);
                if (themeAttributeDimensionSize$1a54e363 == 0) {
                    themeAttributeDimensionSize$1a54e363 = drawerBuilder.getResources().getDimensionPixelSize(C0859R.dimen.abc_action_bar_default_height_material);
                }
                layoutParams.width = Math.min(i - themeAttributeDimensionSize$1a54e363, drawerBuilder.getResources().getDimensionPixelSize(C0859R.dimen.material_drawer_width));
            }
        }
        return layoutParams;
    }

    public DrawerUtils(BitmapPool bitmapPool, Transformation<Bitmap> transformation) {
        this((Transformation) transformation, new ShortcutManagerCompat(transformation, bitmapPool));
    }

    private DrawerUtils(Transformation<Bitmap> transformation, Transformation<GifDrawable> transformation2) {
        this.bitmapTransformation = transformation;
        this.gifDataTransformation = transformation2;
    }

    public final Resource<GifBitmapWrapper> transform(Resource<GifBitmapWrapper> resource, int i, int i2) {
        Resource bitmapResource = ((GifBitmapWrapper) resource.get()).getBitmapResource();
        Resource gifResource = ((GifBitmapWrapper) resource.get()).getGifResource();
        if (bitmapResource != null && this.bitmapTransformation != null) {
            i = this.bitmapTransformation.transform(bitmapResource, i, i2);
            if (bitmapResource.equals(i) == 0) {
                return new FontResourcesParserCompat(new GifBitmapWrapper(i, ((GifBitmapWrapper) resource.get()).getGifResource()));
            }
        } else if (!(gifResource == null || this.gifDataTransformation == null)) {
            i = this.gifDataTransformation.transform(gifResource, i, i2);
            if (gifResource.equals(i) == 0) {
                return new FontResourcesParserCompat(new GifBitmapWrapper(((GifBitmapWrapper) resource.get()).getBitmapResource(), i));
            }
        }
        return resource;
    }

    public final String getId() {
        return this.bitmapTransformation.getId();
    }
}
