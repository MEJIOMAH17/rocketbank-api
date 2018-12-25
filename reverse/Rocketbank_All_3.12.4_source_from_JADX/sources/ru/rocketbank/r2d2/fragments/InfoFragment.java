package ru.rocketbank.r2d2.fragments;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.UserModel.Info;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.ActionBarTitleInstaller;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.IHostFragment;

/* compiled from: InfoFragment.kt */
public final class InfoFragment extends RocketFragment implements ActionBarTitleInstaller, IHostFragment {
    private HashMap _$_findViewCache;
    private LinearLayout linearLayoutMenu;

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

    public final boolean canBack() {
        return false;
    }

    public final boolean canShowMenu() {
        return true;
    }

    public final void moveBack() {
    }

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final String getActionBarTitle() {
        String string = getResources().getString(C0859R.string.fragment_info_title);
        Intrinsics.checkExpressionValueIsNotNull(string, "resources.getString(R.string.fragment_info_title)");
        return string;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        return layoutInflater.inflate(C0859R.layout.fragment_info, viewGroup, false);
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        bundle = view.findViewById(C0859R.id.linearLayoutInfo);
        if (bundle == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.LinearLayout");
        }
        this.linearLayoutMenu = (LinearLayout) bundle;
        setupDefaultToolbar(view, C0859R.id.toolbar);
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        setInfo(userModel);
    }

    private final void setInfo(UserModel userModel) {
        LinearLayout linearLayout = this.linearLayoutMenu;
        if (linearLayout == null) {
            Intrinsics.throwNpe();
        }
        linearLayout.removeAllViews();
        ArrayList arrayList = new ArrayList();
        Iterator it = userModel.getInfo().iterator();
        while (it.hasNext()) {
            Info info = (Info) it.next();
            Info info2 = new Info();
            Intrinsics.checkExpressionValueIsNotNull(info, "info");
            info2.add(info.getTitle());
            info2.add(info.getURL());
            arrayList.add(info2);
        }
        userModel = userModel.getInfo().iterator();
        while (userModel.hasNext()) {
            Info info3 = (Info) userModel.next();
            FragmentActivity activity = getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
            View inflate = activity.getLayoutInflater().inflate(C0859R.layout.item_info_list, this.linearLayoutMenu, false);
            inflate.setOnClickListener(new InfoFragment$setInfo$1(this, info3));
            View findViewById = inflate.findViewById(C0859R.id.infoTextView);
            if (findViewById == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
            }
            RocketTextView rocketTextView = (RocketTextView) findViewById;
            Intrinsics.checkExpressionValueIsNotNull(info3, "info");
            rocketTextView.setText(info3.getTitle());
            linearLayout = this.linearLayoutMenu;
            if (linearLayout == null) {
                Intrinsics.throwNpe();
            }
            linearLayout.addView(inflate);
        }
    }
}
