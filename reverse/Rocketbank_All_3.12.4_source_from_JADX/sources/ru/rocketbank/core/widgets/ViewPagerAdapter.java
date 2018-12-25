package ru.rocketbank.core.widgets;

import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewPagerAdapter.kt */
public final class ViewPagerAdapter extends PagerAdapter {
    private final View[] views;

    public ViewPagerAdapter(View[] viewArr) {
        Intrinsics.checkParameterIsNotNull(viewArr, "views");
        this.views = viewArr;
    }

    public final View[] getViews() {
        return this.views;
    }

    public final int getCount() {
        return this.views.length;
    }

    public final boolean isViewFromObject(View view, Object obj) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(obj, "object");
        return Intrinsics.areEqual(view, obj);
    }

    public final Object instantiateItem(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "container");
        ViewPager viewPager = (ViewPager) viewGroup;
        Intrinsics.checkParameterIsNotNull(viewPager, "pager");
        i = this.views[i];
        viewPager.addView(i);
        return i;
    }

    public final void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "container");
        Intrinsics.checkParameterIsNotNull(obj, "object");
        ((ViewPager) viewGroup).removeView((View) obj);
    }
}
