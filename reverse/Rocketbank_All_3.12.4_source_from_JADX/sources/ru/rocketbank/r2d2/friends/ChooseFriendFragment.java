package ru.rocketbank.r2d2.friends;

import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChooseFriendFragment.kt */
public final class ChooseFriendFragment extends FriendsFragment {
    private HashMap _$_findViewCache;

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    protected final int setToolbarSize(Toolbar toolbar, int i) {
        return 0;
    }

    protected final ChooseFriendAdapter createFriendAdapter() {
        return new ChooseFriendAdapter(new ChooseFriendFragment$createFriendAdapter$1(this));
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        view = this.fab;
        Intrinsics.checkExpressionValueIsNotNull(view, "fab");
        view.setVisibility(8);
    }
}
