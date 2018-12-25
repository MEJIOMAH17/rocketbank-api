package ru.rocketbank.r2d2.root.analytics;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import java.util.HashMap;
import java.util.SortedMap;
import java.util.concurrent.ExecutionException;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.JointAccount;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import rx.Observable;
import rx.Observable.OnSubscribe;

/* compiled from: AnalyticsFragment.kt */
public final class AnalyticsFragment extends RocketFragment implements ChangeAnalyticsListener {
    public static final Companion Companion = new Companion();
    public static final String KEY_IS_JOINT_ANALYTICS = "KEY_IS_JOINT_ANALYTICS";
    public static final String KEY_JOINT_ACCOUNT = "KEY_JOINT_ACCOUNT";
    private HashMap _$_findViewCache;
    private final int avatarSize = 300;
    private CropCircleTransformation cropCircleTransformation;
    private RocketFragment currentFragment;
    private boolean isJointAnalytics = true;
    private JointAccount jointAccount;
    private UserModel userModel;

    /* compiled from: AnalyticsFragment.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: AnalyticsFragment.kt */
    public final class PagerAdapter extends FragmentPagerAdapter {
        private final SortedMap<Integer, RocketFragment> fragments;
        final /* synthetic */ AnalyticsFragment this$0;

        public PagerAdapter(AnalyticsFragment analyticsFragment, FragmentManager fragmentManager, SortedMap<Integer, RocketFragment> sortedMap) {
            Intrinsics.checkParameterIsNotNull(fragmentManager, "fm");
            Intrinsics.checkParameterIsNotNull(sortedMap, "fragments");
            this.this$0 = analyticsFragment;
            super(fragmentManager);
            this.fragments = sortedMap;
        }

        public final SortedMap<Integer, RocketFragment> getFragments() {
            return this.fragments;
        }

        public final RocketFragment getItem(int i) {
            i = ((Pair) kotlin.collections.AbstractList.Companion.toList(this.fragments).get(i)).getSecond();
            Intrinsics.checkExpressionValueIsNotNull(i, "fragments.toList()[position].second");
            return (RocketFragment) i;
        }

        public final void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
            Intrinsics.checkParameterIsNotNull(viewGroup, "container");
            Intrinsics.checkParameterIsNotNull(obj, "object");
            super.setPrimaryItem(viewGroup, i, obj);
            RocketFragment rocketFragment = (RocketFragment) obj;
            if (!(rocketFragment.isAdded() == null || (Intrinsics.areEqual(this.this$0.currentFragment, rocketFragment) ^ 1) == null)) {
                ((ChangeAnalyticsListener) rocketFragment).onChangeAnalytics(this.this$0.isJointAnalytics, this.this$0.getJointIds$App_prodRelease());
            }
            this.this$0.currentFragment = rocketFragment;
        }

        public final CharSequence getPageTitle(int i) {
            Resources resources = this.this$0.getResources();
            i = ((Pair) kotlin.collections.AbstractList.Companion.toList(this.fragments).get(i)).getFirst();
            Intrinsics.checkExpressionValueIsNotNull(i, "fragments.toList()[position].first");
            i = resources.getString(((Number) i).intValue());
            Intrinsics.checkExpressionValueIsNotNull(i, "resources.getString(frag…toList()[position].first)");
            return (CharSequence) i;
        }

        public final int getCount() {
            return this.fragments.size();
        }
    }

    private final int getPlaceholder() {
        return C0859R.drawable.ava_default_unisex;
    }

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

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.view.View onCreateView(android.view.LayoutInflater r9, android.view.ViewGroup r10, android.os.Bundle r11) {
        /*
        r8 = this;
        r0 = "inflater";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r9, r0);
        r0 = 0;
        r1 = 2131493057; // 0x7f0c00c1 float:1.8609583E38 double:1.053097494E-314;
        r9 = r9.inflate(r1, r10, r0);
        r10 = 2131297240; // 0x7f0903d8 float:1.821242E38 double:1.0530007474E-314;
        r8.setupDefaultToolbar(r9, r10);
        r10 = new jp.wasabeef.glide.transformations.CropCircleTransformation;
        r1 = r9.getContext();
        r10.<init>(r1);
        r8.cropCircleTransformation = r10;
        r10 = ru.rocketbank.r2d2.C0859R.id.toolbar;
        r10 = r9.findViewById(r10);
        r10 = (android.support.v7.widget.Toolbar) r10;
        r1 = 2131820630; // 0x7f110056 float:1.927398E38 double:1.0532593364E-314;
        r10.setTitle(r1);
        r10 = ru.rocketbank.r2d2.C0859R.id.tabLayout;
        r10 = r9.findViewById(r10);
        r10 = (android.support.design.widget.TabLayout) r10;
        r1 = "tabLayout";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r10, r1);
        r10.setTabGravity(r0);
        r10 = ru.rocketbank.r2d2.C0859R.id.tabLayout;
        r10 = r9.findViewById(r10);
        r10 = (android.support.design.widget.TabLayout) r10;
        r1 = ru.rocketbank.r2d2.C0859R.id.tabLayout;
        r1 = r9.findViewById(r1);
        r1 = (android.support.design.widget.TabLayout) r1;
        r1 = r1.newTab();
        r2 = "TEST";
        r2 = (java.lang.CharSequence) r2;
        r1 = r1.setText(r2);
        r10.addTab(r1);
        r10 = ru.rocketbank.r2d2.C0859R.id.tabLayout;
        r10 = r9.findViewById(r10);
        r10 = (android.support.design.widget.TabLayout) r10;
        r1 = ru.rocketbank.r2d2.C0859R.id.tabLayout;
        r1 = r9.findViewById(r1);
        r1 = (android.support.design.widget.TabLayout) r1;
        r1 = r1.newTab();
        r2 = 2131821656; // 0x7f110458 float:1.9276061E38 double:1.0532598433E-314;
        r1 = r1.setText(r2);
        r10.addTab(r1);
        r10 = ru.rocketbank.r2d2.C0859R.id.viewPager;
        r10 = r9.findViewById(r10);
        r10 = (android.support.v4.view.ViewPager) r10;
        r1 = "viewPager";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r10, r1);
        r1 = new ru.rocketbank.r2d2.root.analytics.AnalyticsFragment$PagerAdapter;
        r3 = r8.getChildFragmentManager();
        r4 = "childFragmentManager";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4);
        r4 = 2;
        r4 = new kotlin.Pair[r4];
        r5 = 2131820717; // 0x7f1100ad float:1.9274157E38 double:1.0532593794E-314;
        r5 = java.lang.Integer.valueOf(r5);
        r6 = new ru.rocketbank.r2d2.root.analytics.AnalyticsContainerFragment;
        r6.<init>();
        r7 = new kotlin.Pair;
        r7.<init>(r5, r6);
        r4[r0] = r7;
        r2 = java.lang.Integer.valueOf(r2);
        r5 = new ru.rocketbank.r2d2.root.analytics.AnalyticsTagsFragment;
        r5.<init>();
        r6 = new kotlin.Pair;
        r6.<init>(r2, r5);
        r2 = 1;
        r4[r2] = r6;
        r5 = "pairs";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r5);
        r5 = new java.util.TreeMap;
        r5.<init>();
        r6 = r5;
        r6 = (java.util.Map) r6;
        kotlin.collections.AbstractList.Companion.putAll(r6, r4);
        r5 = (java.util.SortedMap) r5;
        r1.<init>(r8, r3, r5);
        r1 = (android.support.v4.view.PagerAdapter) r1;
        r10.setAdapter(r1);
        r10 = ru.rocketbank.r2d2.C0859R.id.tabLayout;
        r10 = r9.findViewById(r10);
        r10 = (android.support.design.widget.TabLayout) r10;
        r1 = ru.rocketbank.r2d2.C0859R.id.viewPager;
        r1 = r9.findViewById(r1);
        r1 = (android.support.v4.view.ViewPager) r1;
        r10.setupWithViewPager(r1);
        if (r11 == 0) goto L_0x00ee;
    L_0x00e7:
        r10 = "KEY_IS_JOINT_ANALYTICS";
        r10 = r11.getBoolean(r10, r0);
        goto L_0x00f0;
    L_0x00ee:
        r10 = r8.isJointAnalytics;
    L_0x00f0:
        r8.isJointAnalytics = r10;
        if (r11 == 0) goto L_0x00fe;
    L_0x00f4:
        r10 = "KEY_JOINT_ACCOUNT";
        r10 = r11.getParcelable(r10);
        r10 = (ru.rocketbank.core.model.JointAccount) r10;
        if (r10 != 0) goto L_0x0100;
    L_0x00fe:
        r10 = r8.jointAccount;
    L_0x0100:
        r8.jointAccount = r10;
        r10 = ru.rocketbank.r2d2.C0859R.id.buttonChangeAnalyticsToolbar;
        r10 = r9.findViewById(r10);
        r10 = (ru.rocketbank.r2d2.root.analytics.SwitchAvatarButton) r10;
        r1 = new ru.rocketbank.r2d2.root.analytics.AnalyticsFragment$onCreateView$$inlined$with$lambda$1;
        r1.<init>(r8, r11);
        r1 = (android.view.View.OnClickListener) r1;
        r10.setOnClickListener(r1);
        r10 = ru.rocketbank.r2d2.root.analytics.AnalyticsBaseFragment.Companion;
        r10 = r10.getAvatars();
        if (r10 == 0) goto L_0x0141;
    L_0x011c:
        r10 = ru.rocketbank.r2d2.C0859R.id.buttonChangeAnalyticsToolbar;
        r10 = r9.findViewById(r10);
        r10 = (ru.rocketbank.r2d2.root.analytics.SwitchAvatarButton) r10;
        r11 = ru.rocketbank.r2d2.root.analytics.AnalyticsBaseFragment.Companion;
        r11 = r11.getAvatars();
        if (r11 != 0) goto L_0x012f;
    L_0x012c:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x012f:
        r11 = r11[r0];
        r1 = ru.rocketbank.r2d2.root.analytics.AnalyticsBaseFragment.Companion;
        r1 = r1.getAvatars();
        if (r1 != 0) goto L_0x013c;
    L_0x0139:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x013c:
        r1 = r1[r2];
        r10.setAvatars(r11, r1);
    L_0x0141:
        r10 = ru.rocketbank.r2d2.C0859R.id.buttonChangeAnalyticsToolbar;
        r10 = r9.findViewById(r10);
        r10 = (ru.rocketbank.r2d2.root.analytics.SwitchAvatarButton) r10;
        r11 = r8.isJointAnalytics;
        r10.setDoubleAvatar(r11);
        r10 = r8.jointAccount;
        if (r10 != 0) goto L_0x0154;
    L_0x0152:
        r0 = 8;
    L_0x0154:
        r10 = ru.rocketbank.r2d2.C0859R.id.buttonChangeAnalyticsToolbar;
        r10 = r9.findViewById(r10);
        r10 = (ru.rocketbank.r2d2.root.analytics.SwitchAvatarButton) r10;
        r11 = "buttonChangeAnalyticsToolbar";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r10, r11);
        r10.setVisibility(r0);
        return r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.analytics.AnalyticsFragment.onCreateView(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    public final void onChangeAnalytics(boolean z, int[] iArr) {
        this.isJointAnalytics = z;
        updateAnalytics(z);
        RocketFragment currentFragment = currentFragment();
        if (currentFragment == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.root.analytics.ChangeAnalyticsListener");
        }
        ((ChangeAnalyticsListener) currentFragment).onChangeAnalytics(z, iArr);
    }

    public final int[] getJointIds() {
        return getJointIds$App_prodRelease();
    }

    private final Bitmap loadBitmap(String str) throws ExecutionException, InterruptedException {
        str = Glide.with(getContext()).load(str).asBitmap();
        Transformation[] transformationArr = new Transformation[1];
        CropCircleTransformation cropCircleTransformation = this.cropCircleTransformation;
        if (cropCircleTransformation == null) {
            Intrinsics.throwNpe();
        }
        transformationArr[0] = cropCircleTransformation;
        str = str.transform(transformationArr).into(this.avatarSize, this.avatarSize).get();
        Intrinsics.checkExpressionValueIsNotNull(str, "Glide.with(context).load…arSize, avatarSize).get()");
        return (Bitmap) str;
    }

    private final Bitmap loadBitmap(int i) throws ExecutionException, InterruptedException {
        i = Glide.with(getContext()).load(Integer.valueOf(i)).asBitmap();
        Transformation[] transformationArr = new Transformation[1];
        CropCircleTransformation cropCircleTransformation = this.cropCircleTransformation;
        if (cropCircleTransformation == null) {
            Intrinsics.throwNpe();
        }
        transformationArr[0] = cropCircleTransformation;
        i = i.transform(transformationArr).into(this.avatarSize, this.avatarSize).get();
        Intrinsics.checkExpressionValueIsNotNull(i, "Glide.with(context).load…arSize, avatarSize).get()");
        return (Bitmap) i;
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        this.userModel = userModel;
        userModel = userModel.getJointAccount();
        if (!(this.jointAccount == null || userModel == null)) {
            JointAccount jointAccount = this.jointAccount;
            if (jointAccount == null) {
                Intrinsics.throwNpe();
            }
            if ((Intrinsics.areEqual(jointAccount.getId(), userModel.getId()) ^ 1) != 0) {
                AnalyticsBaseFragment.Companion.setAvatars(null);
            }
        }
        this.jointAccount = userModel;
        updateAnalytics(this.isJointAnalytics);
    }

    private final Observable<Bitmap[]> createDoubleAvatar(String str, String str2) {
        str = Observable.create((OnSubscribe) new AnalyticsFragment$createDoubleAvatar$1(this, str, str2));
        Intrinsics.checkExpressionValueIsNotNull(str, "Observable.create { subs…)\n            }\n        }");
        return str;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void updateAnalytics(boolean r3) {
        /*
        r2 = this;
        r2.isJointAnalytics = r3;
        r3 = r2.getView();
        if (r3 == 0) goto L_0x0017;
    L_0x0008:
        r0 = ru.rocketbank.r2d2.C0859R.id.buttonChangeAnalyticsToolbar;
        r3 = r3.findViewById(r0);
        r3 = (ru.rocketbank.r2d2.root.analytics.SwitchAvatarButton) r3;
        if (r3 == 0) goto L_0x0017;
    L_0x0012:
        r0 = r2.isJointAnalytics;
        r3.setDoubleAvatar(r0);
    L_0x0017:
        r3 = r2.userModel;
        if (r3 != 0) goto L_0x001c;
    L_0x001b:
        return;
    L_0x001c:
        r3 = r2.jointAccount;
        if (r3 == 0) goto L_0x0061;
    L_0x0020:
        r3 = ru.rocketbank.r2d2.root.analytics.AnalyticsBaseFragment.Companion;
        r3 = r3.getAvatars();
        if (r3 != 0) goto L_0x0061;
    L_0x0028:
        r3 = r2.userModel;
        if (r3 != 0) goto L_0x002f;
    L_0x002c:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x002f:
        r3 = r3.getUserpicUrl();
        if (r3 != 0) goto L_0x0037;
    L_0x0035:
        r3 = "";
    L_0x0037:
        r0 = r2.jointAccount;
        if (r0 == 0) goto L_0x0041;
    L_0x003b:
        r0 = r0.getJoint_user_avatar();
        if (r0 != 0) goto L_0x0043;
    L_0x0041:
        r0 = "";
    L_0x0043:
        r3 = r2.createDoubleAvatar(r3, r0);
        r0 = rx.android.schedulers.AndroidSchedulers.mainThread();
        r3 = r3.observeOn(r0);
        r0 = rx.schedulers.Schedulers.io();
        r3 = r3.subscribeOn(r0);
        r0 = new ru.rocketbank.r2d2.root.analytics.AnalyticsFragment$updateAnalytics$1;
        r0.<init>(r2);
        r0 = (rx.Subscriber) r0;
        r3.subscribe(r0);
    L_0x0061:
        r3 = r2.jointAccount;
        if (r3 != 0) goto L_0x0068;
    L_0x0065:
        r3 = 8;
        goto L_0x0069;
    L_0x0068:
        r3 = 0;
    L_0x0069:
        r0 = r2.getView();
        if (r0 == 0) goto L_0x007d;
    L_0x006f:
        r1 = ru.rocketbank.r2d2.C0859R.id.buttonChangeAnalyticsToolbar;
        r0 = r0.findViewById(r1);
        r0 = (ru.rocketbank.r2d2.root.analytics.SwitchAvatarButton) r0;
        if (r0 == 0) goto L_0x007d;
    L_0x0079:
        r0.setVisibility(r3);
        return;
    L_0x007d:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.analytics.AnalyticsFragment.updateAnalytics(boolean):void");
    }

    public final boolean onBackPressed() {
        RocketFragment currentFragment = currentFragment();
        return currentFragment != null ? currentFragment.onBackPressed() : false;
    }

    public final boolean canBack() {
        RocketFragment currentFragment = currentFragment();
        return currentFragment != null ? currentFragment.canBack() : false;
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(KEY_IS_JOINT_ANALYTICS, this.isJointAnalytics);
        bundle.putParcelable(KEY_JOINT_ACCOUNT, this.jointAccount);
    }

    private final RocketFragment currentFragment() {
        return this.currentFragment;
    }

    public final void onPause() {
        super.onPause();
        View view = getView();
        if (view != null) {
            ViewPager viewPager = (ViewPager) view.findViewById(C0859R.id.viewPager);
            if (viewPager != null) {
                viewPager.onSaveInstanceState();
            }
        }
    }

    public final int[] getJointIds$App_prodRelease() {
        if (!this.isJointAnalytics || this.jointAccount == null) {
            return null;
        }
        int[] iArr = new int[1];
        JointAccount jointAccount = this.jointAccount;
        if (jointAccount == null) {
            Intrinsics.throwNpe();
        }
        Integer id = jointAccount.getId();
        if (id == null) {
            Intrinsics.throwNpe();
        }
        iArr[0] = id.intValue();
        return iArr;
    }
}
