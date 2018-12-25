package ru.rocketbank.r2d2.fragments.profile;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.provider.MediaStore.Images.Media;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;
import com.bumptech.glide.DrawableRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.facebook.internal.NativeProtocol;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import com.mikepenz.materialdrawer.util.KeyboardUtil;
import de.greenrobot.event.EventBus;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import ru.rocketbank.core.events.ChangeFingerprintSwitchEvent;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.TouchManager;
import ru.rocketbank.core.manager.social.FacebookImpl;
import ru.rocketbank.core.manager.social.SocialNet;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.ChangeCodeWord;
import ru.rocketbank.core.model.ChangeMobilePhone;
import ru.rocketbank.core.model.ChangeShortCode;
import ru.rocketbank.core.model.CoverModel;
import ru.rocketbank.core.model.JointAccount;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.UsernameModel;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.core.model.dto.ChangePin;
import ru.rocketbank.core.model.dto.CheckCardData;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.network.Request;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.network.api.UserApi;
import ru.rocketbank.core.network.model.PatchProfileBody;
import ru.rocketbank.core.network.model.PatchProfileBody.User;
import ru.rocketbank.core.network.model.PatchProfileBody.UserName;
import ru.rocketbank.core.network.model.UploadImageResponse;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.fs.ExternalFile;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.RocketConstants;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.activities.ChangeCodeActivity;
import ru.rocketbank.r2d2.activities.ChangePhoneActivity;
import ru.rocketbank.r2d2.adapters.ParallaxAdapter;
import ru.rocketbank.r2d2.data.binding.profile.ProfileData;
import ru.rocketbank.r2d2.data.binding.profile.ProfileHandler;
import ru.rocketbank.r2d2.databinding.FragmentProfileBinding;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.friends.ChooseFriendActivity;
import ru.rocketbank.r2d2.helpers.UIHelper;
import ru.rocketbank.r2d2.utils.ImageUpload;
import ru.rocketbank.r2d2.widgets.FingerprintDialog;
import ru.rocketbank.r2d2.widgets.recycler.parallax.ObservableParallaxListener;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.AnalyticsProfileViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericSwitchViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

/* compiled from: ProfileFragment.kt */
public final class ProfileFragment extends RocketFragment implements ProfileHandler {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(ProfileFragment.class), "socialNet", "getSocialNet()Lru/rocketbank/core/manager/social/SocialNet;"))};
    public static final int CHOOSE_FRIEND_REQUST_CODE = 555;
    public static final Companion Companion = new Companion();
    private static final MediaType JSON = MediaType.parse("application/json; charset=utf-8");
    public static final int OPEN_SECURITY_SETTINGS_REQUEST_CODE = 556;
    private static final int PERM_ASK_CAMERA_AVATAR = 0;
    private static final int PERM_ASK_CAMERA_COVER = 1;
    private static final int PERM_ASK_GALLERY_AVATAR = 2;
    private static final int PERM_ASK_GALLERY_COVER = 3;
    private static final String TAG = "PROFILE";
    private static Interceptor authInterceptor = ProfileFragment$Companion$authInterceptor$1.INSTANCE;
    private HashMap _$_findViewCache;
    private boolean analyticsInProgress;
    private int analyticsItemPosition = -1;
    private FrameLayout appBarLayout;
    private final Authorization authorization = getInjector().getAuthorization();
    private String cameraPhotoPath;
    private View cardOverlay;
    private Subscription changeNameSubscription;
    public CropCircleTransformation cropCircleTransformation;
    private GenericSwitchViewHolder fingerprintViewHolder;
    private FragmentProfileBinding fragmentProfileBinding;
    private final Handler handler = new Handler();
    private int headerHeight;
    private View headerOverlay;
    private Subscription min3Subscription;
    private int paralaxSize;
    private ObservableParallaxListener parallaxListener;
    private ProfileAdapter profileAdapter;
    private ProfileData profileData;
    private ObservableRecyclerView recyclerProfileView;
    private Subscription refillSubscription;
    private final RocketAPI rocketAPI = getInjector().getRocketApi();
    private RocketTextView rocketTitle;
    private final Lazy socialNet$delegate = ExceptionsKt__ExceptionsKt.lazyOf(new FacebookImpl(RocketApplication.Companion.getContext()));
    private final TouchManager touchManager = RocketApplication.Companion.getInjector().getTouchManager();
    private Subscription uploadSubscription;
    private final UserApi userApi = getInjector().getUserApi();
    private UserModel userModel;
    private int windowWidth;

    /* compiled from: ProfileFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final Interceptor getAuthInterceptor$App_prodRelease() {
            return ProfileFragment.authInterceptor;
        }

        public final void setAuthInterceptor$App_prodRelease(Interceptor interceptor) {
            Intrinsics.checkParameterIsNotNull(interceptor, "<set-?>");
            ProfileFragment.authInterceptor = interceptor;
        }
    }

    private final SocialNet getSocialNet() {
        return (SocialNet) this.socialNet$delegate.getValue();
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

    public final CropCircleTransformation getCropCircleTransformation() {
        CropCircleTransformation cropCircleTransformation = this.cropCircleTransformation;
        if (cropCircleTransformation == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cropCircleTransformation");
        }
        return cropCircleTransformation;
    }

    public final void setCropCircleTransformation(CropCircleTransformation cropCircleTransformation) {
        Intrinsics.checkParameterIsNotNull(cropCircleTransformation, "<set-?>");
        this.cropCircleTransformation = cropCircleTransformation;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        this.profileData = new ProfileData();
        layoutInflater = FragmentProfileBinding.inflate(layoutInflater, viewGroup, null);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentProfileBinding.i…flater, container, false)");
        this.fragmentProfileBinding = layoutInflater;
        layoutInflater = this.fragmentProfileBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        viewGroup = this.profileData;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileData");
        }
        layoutInflater.setData(viewGroup);
        layoutInflater = this.fragmentProfileBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        layoutInflater.setHandler(this);
        layoutInflater = this.fragmentProfileBinding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        layoutInflater = layoutInflater.getRoot();
        viewGroup = this.fragmentProfileBinding;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        viewGroup = viewGroup.feed;
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "fragmentProfileBinding.feed");
        this.recyclerProfileView = viewGroup;
        viewGroup = this.fragmentProfileBinding;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        viewGroup = viewGroup.appBar;
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "fragmentProfileBinding.appBar");
        this.appBarLayout = viewGroup;
        viewGroup = this.fragmentProfileBinding;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        this.rocketTitle = viewGroup.realToolbarTitle;
        viewGroup = this.fragmentProfileBinding;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        this.cardOverlay = viewGroup.cardOverlay;
        viewGroup = this.fragmentProfileBinding;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        this.headerOverlay = viewGroup.headerOverlay;
        this.cropCircleTransformation = new CropCircleTransformation(getContext());
        this.paralaxSize = getResources().getDimensionPixelSize(C0859R.dimen.parallax_size);
        viewGroup = getActivity();
        if (viewGroup == null) {
            Intrinsics.throwNpe();
        }
        viewGroup = viewGroup.getSystemService("window");
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
        }
        viewGroup = ((WindowManager) viewGroup).getDefaultDisplay();
        bundle = new Point();
        viewGroup.getSize(bundle);
        this.windowWidth = bundle.x;
        return layoutInflater;
    }

    public final void onStart() {
        super.onStart();
        EventBus.getDefault().register(this);
        ObservableRecyclerView observableRecyclerView = this.recyclerProfileView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerProfileView");
        }
        observableRecyclerView.setScrollViewCallbacks(this.parallaxListener);
        Utils.closeKeyboardIfExists(getActivity());
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        Window window = activity.getWindow();
        if (window != null) {
            window.setSoftInputMode(18);
        }
    }

    public final void onStop() {
        super.onStop();
        EventBus.getDefault().unregister(this);
        ObservableRecyclerView observableRecyclerView = this.recyclerProfileView;
        if (observableRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerProfileView");
        }
        observableRecyclerView.setScrollViewCallbacks(null);
        FragmentProfileBinding fragmentProfileBinding = this.fragmentProfileBinding;
        if (fragmentProfileBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        SwipeRefreshLayout swipeRefreshLayout = fragmentProfileBinding.swipeRefresh;
        Intrinsics.checkExpressionValueIsNotNull(swipeRefreshLayout, "swipeRefreshLayout");
        swipeRefreshLayout.setRefreshing(false);
        swipeRefreshLayout.destroyDrawingCache();
        swipeRefreshLayout.clearAnimation();
        hideProgressDialog();
        unsubscribe(this.changeNameSubscription);
        unsubscribe(this.uploadSubscription);
        unsubscribe(this.refillSubscription);
        unsubscribe(this.min3Subscription);
    }

    public final void onViewCreated(View view, Bundle bundle) {
        ObservableRecyclerView observableRecyclerView;
        ObservableParallaxListener observableParallaxListener;
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        KeyboardUtil.hideKeyboard(getActivity());
        setupToolbar();
        if (this.profileAdapter == null) {
            observableRecyclerView = this.recyclerProfileView;
            if (observableRecyclerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("recyclerProfileView");
            }
            RecyclerView recyclerView = observableRecyclerView;
            ProfileHandler profileHandler = this;
            ProfileData profileData = this.profileData;
            if (profileData == null) {
                Intrinsics.throwUninitializedPropertyAccessException("profileData");
            }
            UserData userData = this.authorization.getUserData();
            FrameLayout frameLayout = this.appBarLayout;
            if (frameLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("appBarLayout");
            }
            this.profileAdapter = new ProfileAdapter(this, null, recyclerView, profileHandler, profileData, userData, frameLayout, this.headerHeight);
        }
        view = this.recyclerProfileView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerProfileView");
        }
        if (view.getLayoutManager() == null) {
            view = new LinearLayoutManager(getActivity());
            observableRecyclerView = this.recyclerProfileView;
            if (observableRecyclerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("recyclerProfileView");
            }
            observableRecyclerView.setLayoutManager((LayoutManager) view);
        }
        view = this.recyclerProfileView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerProfileView");
        }
        view.setAdapter(this.profileAdapter);
        view = this.recyclerProfileView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerProfileView");
        }
        view.setVerticalScrollbarPosition(0);
        view = this.fragmentProfileBinding;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        view = view.coverImage;
        Intrinsics.checkExpressionValueIsNotNull(view, "fragmentProfileBinding.coverImage");
        view.getLayoutParams().height = this.headerHeight;
        view.requestLayout();
        view = this.fragmentProfileBinding;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        view = view.toolbar;
        FragmentProfileBinding fragmentProfileBinding = this.fragmentProfileBinding;
        if (fragmentProfileBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        Toolbar toolbar = fragmentProfileBinding.toolbarReal;
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "realToolbar");
        toolbar.setTitle("");
        Intrinsics.checkExpressionValueIsNotNull(view, "toolbar");
        LayoutParams layoutParams = view.getLayoutParams();
        if (this.parallaxListener == null) {
            int i = this.headerHeight;
            int i2 = this.paralaxSize;
            ProfileData profileData2 = this.profileData;
            if (profileData2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("profileData");
            }
            this.parallaxListener = new ObservableParallaxListener(0, i, i2, profileData2, layoutParams.height);
        } else {
            observableParallaxListener = this.parallaxListener;
            if (observableParallaxListener != null) {
                ProfileData profileData3 = this.profileData;
                if (profileData3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("profileData");
                }
                observableParallaxListener.update(profileData3);
            }
        }
        observableParallaxListener = this.parallaxListener;
        if (observableParallaxListener == null) {
            Intrinsics.throwNpe();
        }
        observableParallaxListener.onRestore(bundle);
        view.setTitle(getString(C0859R.string.profile_settings));
        toolbar.setTitle(getString(C0859R.string.profile_settings));
        view.setNavigationOnClickListener(getNavigationClick());
        toolbar.setNavigationOnClickListener(getNavigationClick());
        view = this.fragmentProfileBinding;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        view.swipeRefresh.setOnRefreshListener((OnRefreshListener) new ProfileFragment$onViewCreated$1(this));
    }

    public final void onDestroyView() {
        this.fingerprintViewHolder = null;
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        ProfileAdapter profileAdapter = this.profileAdapter;
        if (profileAdapter != null) {
            profileAdapter.updateUserModel(userModel);
        }
        FragmentProfileBinding fragmentProfileBinding = this.fragmentProfileBinding;
        if (fragmentProfileBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        SwipeRefreshLayout swipeRefreshLayout = fragmentProfileBinding.swipeRefresh;
        Intrinsics.checkExpressionValueIsNotNull(swipeRefreshLayout, "swipeRefreshLayout");
        swipeRefreshLayout.setRefreshing(false);
        swipeRefreshLayout.destroyDrawingCache();
        swipeRefreshLayout.clearAnimation();
        profileAdapter = this.profileAdapter;
        if (profileAdapter == null) {
            Intrinsics.throwNpe();
        }
        profileAdapter.clearTop();
        setUserModel(userModel);
        refreshUserData();
    }

    private final void setUserModel(UserModel userModel) {
        this.userModel = userModel;
    }

    private final void setupToolbar() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Drawable drawable = ContextCompat.getDrawable(context, C0859R.drawable.ic_drawer_black);
        ProfileData profileData = this.profileData;
        if (profileData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileData");
        }
        profileData.getToolbarBackDrawable().set(drawable);
        context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        drawable = ContextCompat.getDrawable(context, C0859R.drawable.ic_drawer_white);
        profileData = this.profileData;
        if (profileData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileData");
        }
        profileData.getToolbarWhiteBackDrawable().set(drawable);
        setupToolbarSizes();
    }

    private final void setupToolbarSizes() {
        int statusBarHeight = getStatusBarHeight();
        FragmentProfileBinding fragmentProfileBinding = this.fragmentProfileBinding;
        if (fragmentProfileBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        Toolbar toolbar = fragmentProfileBinding.toolbar;
        FragmentProfileBinding fragmentProfileBinding2 = this.fragmentProfileBinding;
        if (fragmentProfileBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        Toolbar toolbar2 = fragmentProfileBinding2.toolbarReal;
        setToolbarSize(toolbar, statusBarHeight);
        setToolbarSize(toolbar2, statusBarHeight);
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "toolbar");
        int i = toolbar.getLayoutParams().height;
        Intrinsics.checkExpressionValueIsNotNull(toolbar2, "realToolbar");
        toolbar2.setTranslationY((float) (-i));
        FrameLayout frameLayout = this.appBarLayout;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appBarLayout");
        }
        LayoutParams layoutParams = frameLayout.getLayoutParams();
        layoutParams.height += statusBarHeight;
        FrameLayout frameLayout2 = this.appBarLayout;
        if (frameLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appBarLayout");
        }
        frameLayout2.requestLayout();
        this.headerHeight = layoutParams.height;
    }

    private final void onCheckChanged(ParallaxItem parallaxItem, boolean z, GenericSwitchViewHolder genericSwitchViewHolder) {
        if (parallaxItem.getId() == ProfileAdapter.Companion.getREFILL_ID()) {
            switchRefill(z, genericSwitchViewHolder);
        } else {
            switch3MinInterval(z);
        }
    }

    private final void switch3MinInterval(boolean z) {
        showProgressDialog();
        Subscription subscription = this.min3Subscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        PatchProfileBody patchProfileBody = new PatchProfileBody();
        patchProfileBody.setUser(new User());
        patchProfileBody.getUser().setShortTermLogin(Boolean.valueOf(z));
        this.min3Subscription = this.userApi.patchProfile(patchProfileBody).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new ProfileFragment$switch3MinInterval$1(this, z));
    }

    private final void switchRefill(boolean z, GenericSwitchViewHolder genericSwitchViewHolder) {
        showProgressDialog();
        Subscription subscription = this.refillSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        PatchProfileBody patchProfileBody = new PatchProfileBody();
        patchProfileBody.setUser(new User());
        patchProfileBody.getUser().setUsername(new UserName());
        UserName username = patchProfileBody.getUser().getUsername();
        if (username == null) {
            Intrinsics.throwNpe();
        }
        username.setWorks(Boolean.valueOf(z));
        this.refillSubscription = this.userApi.patchProfile(patchProfileBody).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new ProfileFragment$switchRefill$1(this, genericSwitchViewHolder, z));
    }

    private final void showProgressDialog() {
        FragmentActivity activity = getActivity();
        if (!(activity instanceof AbstractActivity)) {
            activity = null;
        }
        AbstractActivity abstractActivity = (AbstractActivity) activity;
        if (abstractActivity != null) {
            abstractActivity.showProgressDialog();
        }
    }

    private final void hideProgressDialog() {
        FragmentActivity activity = getActivity();
        if (!(activity instanceof AbstractActivity)) {
            activity = null;
        }
        AbstractActivity abstractActivity = (AbstractActivity) activity;
        if (abstractActivity != null) {
            abstractActivity.hideProgressDialog();
        }
    }

    private final void onChangeApp() {
        UserModel userModel = this.userModel;
        if (userModel == null) {
            Intrinsics.throwNpe();
        }
        ChangeShortCode changeShortCode = userModel.getChangeShortCode();
        String str = null;
        if (changeShortCode == null || changeShortCode.getCheckCard() == null) {
            ChangeCodeActivity.startCode(getActivity(), null, false, true);
        } else {
            userModel = this.userModel;
            if (userModel != null) {
                changeShortCode = userModel.getChangeShortCode();
                if (changeShortCode != null) {
                    CheckCardData checkCard = changeShortCode.getCheckCard();
                    if (checkCard != null) {
                        str = checkCard.getToken();
                    }
                }
            }
            if (str != null) {
                Context activity = getActivity();
                UserModel userModel2 = this.userModel;
                if (userModel2 == null) {
                    Intrinsics.throwNpe();
                }
                ChangeShortCode changeShortCode2 = userModel2.getChangeShortCode();
                Intrinsics.checkExpressionValueIsNotNull(changeShortCode2, "userModel!!.changeShortCode");
                ChangeCodeActivity.startCode(activity, str, true, true, changeShortCode2.getCheckCard());
            }
        }
    }

    private final void onChangePhone() {
        UserModel userModel = this.userModel;
        if (userModel == null) {
            Intrinsics.throwNpe();
        }
        ChangeMobilePhone changeMobilePhone = userModel.getChangeMobilePhone();
        if (changeMobilePhone != null) {
            ru.rocketbank.r2d2.activities.ChangePhoneActivity.Companion companion = ChangePhoneActivity.Companion;
            FragmentActivity activity = getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
            companion.start(activity, changeMobilePhone);
        }
    }

    private final void onChangePin() {
        Context context = getContext();
        if (context != null) {
            UserModel userModel = this.userModel;
            if (userModel != null) {
                AccountModel currentAccount = userModel.getCurrentAccount();
                if (currentAccount != null) {
                    ChangePin changePin = currentAccount.getChangePin();
                    if (changePin != null) {
                        ChangeCodeActivity.startPin(context, false, changePin, true);
                    }
                }
            }
        }
    }

    private final ParallaxItem avatarItem() {
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setType(ProfileAdapter.Companion.getIMAGE_AVATAR());
        parallaxItem.setViewType(ProfileAdapter.Companion.getVIEW_TYPE_IMAGE());
        parallaxItem.setSubtitle(getString(C0859R.string.avatar));
        parallaxItem.setTitle(getString(C0859R.string.pa_set_avatar));
        parallaxItem.setId(ProfileAdapter.Companion.getIMAGE_AVATAR());
        return parallaxItem;
    }

    private final ParallaxItem coverItem() {
        ParallaxItem parallaxItem = new ParallaxItem();
        parallaxItem.setType(ProfileAdapter.Companion.getIMAGE_COVER());
        parallaxItem.setViewType(ProfileAdapter.Companion.getVIEW_TYPE_IMAGE());
        parallaxItem.setSubtitle(getString(C0859R.string.cover));
        parallaxItem.setTitle(getString(C0859R.string.pa_set_cover));
        return parallaxItem;
    }

    private final void fillAdapterWithData() {
        ParallaxAdapter parallaxAdapter = this.profileAdapter;
        if (parallaxAdapter != null) {
            UserModel userModel;
            parallaxAdapter.clearAll();
            String string = getString(C0859R.string.profile);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.profile)");
            parallaxAdapter.addDelimiter(string);
            ChangeCodeWord changeCodeWord = null;
            ParallaxAdapter.addStaticItem$default(parallaxAdapter, avatarItem(), 0, 2, null);
            ParallaxAdapter.addStaticItem$default(parallaxAdapter, coverItem(), 0, 2, null);
            string = getString(C0859R.string.sounds);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.sounds)");
            String string2 = getString(C0859R.string.pa_set_sounds);
            Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.pa_set_sounds)");
            parallaxAdapter.addRoundImage(string, string2, C0859R.drawable.music, new ProfileFragment$fillAdapterWithData$$inlined$let$lambda$1(this));
            string = getString(C0859R.string.settings);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.settings)");
            parallaxAdapter.addDelimiter(string);
            string = getString(C0859R.string.pa_3_min_entrance);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.pa_3_min_entrance)");
            string2 = getString(C0859R.string.pa_3_min_entrance_description);
            Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.pa_3_min_entrance_description)");
            parallaxAdapter.addSwitch(string, string2, new ProfileFragment$fillAdapterWithData$$inlined$let$lambda$2(this), new ProfileFragment$fillAdapterWithData$$inlined$let$lambda$3(this));
            if (this.touchManager.isHardwareDetected()) {
                string = getString(C0859R.string.auth_with_fingerprint);
                Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.auth_with_fingerprint)");
                string2 = getString(C0859R.string.auth_with_fingerprint_description);
                Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.auth_…_fingerprint_description)");
                parallaxAdapter.addSwitch(string, string2, new ProfileFragment$fillAdapterWithData$$inlined$let$lambda$4(this), new ProfileFragment$fillAdapterWithData$$inlined$let$lambda$5(this));
            }
            string = getString(C0859R.string.change_pin);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.change_pin)");
            parallaxAdapter.addRightArrow(string, new ProfileFragment$fillAdapterWithData$$inlined$let$lambda$6(this));
            string = getString(C0859R.string.change_phone_number_button);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.change_phone_number_button)");
            parallaxAdapter.addRightArrow(string, new ProfileFragment$fillAdapterWithData$$inlined$let$lambda$7(this));
            string = getString(C0859R.string.change_app_code);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.change_app_code)");
            parallaxAdapter.addRightArrow(string, new ProfileFragment$fillAdapterWithData$$inlined$let$lambda$8(this));
            if (Cobrand.Companion.fromCobrandName(this.authorization.getUserData().realmGet$cobrandName()) == Cobrand.ONETWOTRIP) {
                userModel = this.userModel;
                if ((userModel != null ? userModel.getOnetwotripUid() : null) != null) {
                    string = getString(C0859R.string.onetwotrip_uid_title);
                    Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.onetwotrip_uid_title)");
                    UserModel userModel2 = this.userModel;
                    parallaxAdapter.addItem(string, userModel2 != null ? userModel2.getOnetwotripUid() : null, new ProfileFragment$fillAdapterWithData$$inlined$let$lambda$9(this));
                }
            }
            string = getString(C0859R.string.penalty_tax_notification);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.penalty_tax_notification)");
            parallaxAdapter.addRightArrow(string, new ProfileFragment$fillAdapterWithData$$inlined$let$lambda$10(this));
            addJointAnalytics();
            userModel = this.userModel;
            if (userModel != null) {
                changeCodeWord = userModel.getChangeCodeWord();
            }
            if (changeCodeWord != null) {
                string = changeCodeWord.getText();
                if (string == null) {
                    string = getString(C0859R.string.change_code_word);
                    Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.change_code_word)");
                }
                parallaxAdapter.addRightArrow(string, new ProfileFragment$fillAdapterWithData$$inlined$let$lambda$11(this));
            }
            string2 = getString(C0859R.string.pa_refill_page);
            Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.pa_refill_page)");
            String string3 = getString(C0859R.string.pa_refill_page_description);
            Intrinsics.checkExpressionValueIsNotNull(string3, "getString(R.string.pa_refill_page_description)");
            parallaxAdapter.addSwitch(string2, string3, new ProfileFragment$fillAdapterWithData$$inlined$let$lambda$12(this), new ProfileFragment$fillAdapterWithData$$inlined$let$lambda$13(this), new ProfileFragment$fillAdapterWithData$$inlined$let$lambda$14(this));
            parallaxAdapter.notifyDataSetChanged();
        }
    }

    private final void onOneTwoTripUidClick() {
        Context context = getContext();
        String str = "OneTwoTrip";
        UserModel userModel = this.userModel;
        Utils.copyTextToClipboard(context, str, userModel != null ? userModel.getOnetwotripUid() : null);
        UIHelper.showSnack(getView(), (int) C0859R.string.onetwotrip_code_copied);
    }

    private final void switchFingerPrint(boolean z, GenericSwitchViewHolder genericSwitchViewHolder) {
        if (z) {
            genericSwitchViewHolder.setClickable(false);
            this.handler.postDelayed(new ProfileFragment$switchFingerPrint$1(this), 200);
        } else {
            this.touchManager.invalidateToken();
        }
        this.fingerprintViewHolder = genericSwitchViewHolder;
    }

    public final void onEventMainThread(ChangeFingerprintSwitchEvent changeFingerprintSwitchEvent) {
        Intrinsics.checkParameterIsNotNull(changeFingerprintSwitchEvent, NotificationCompat.CATEGORY_EVENT);
        GenericSwitchViewHolder genericSwitchViewHolder = this.fingerprintViewHolder;
        if (genericSwitchViewHolder != null) {
            genericSwitchViewHolder.setEnabled(changeFingerprintSwitchEvent.getState());
            genericSwitchViewHolder.setClickable(true);
        }
    }

    private final void updateFingerprint() {
        if (this.touchManager.isAvailable()) {
            ru.rocketbank.r2d2.widgets.FingerprintDialog.Companion companion = FingerprintDialog.Companion;
            FragmentManager fragmentManager = getFragmentManager();
            if (fragmentManager == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(fragmentManager, "fragmentManager!!");
            companion.showFingerprintDialog(fragmentManager);
            return;
        }
        GenericSwitchViewHolder genericSwitchViewHolder = this.fingerprintViewHolder;
        if (genericSwitchViewHolder != null) {
            genericSwitchViewHolder.setEnabled(false);
            genericSwitchViewHolder.setClickable(true);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void addJointAnalytics() {
        /*
        r20 = this;
        r0 = r20;
        r1 = "";
        r2 = "";
        r3 = new kotlin.jvm.internal.Ref$ObjectRef;
        r3.<init>();
        r4 = 0;
        r3.element = r4;
        r5 = r0.userModel;
        if (r5 == 0) goto L_0x0151;
    L_0x0012:
        r5 = r0.userModel;
        if (r5 != 0) goto L_0x001e;
    L_0x0016:
        r1 = new kotlin.TypeCastException;
        r2 = "null cannot be cast to non-null type ru.rocketbank.core.model.UserModel";
        r1.<init>(r2);
        throw r1;
    L_0x001e:
        r6 = r5.getJointAccounts();
        r7 = 0;
        if (r6 == 0) goto L_0x0065;
    L_0x0025:
        r6 = r5.getJointAccounts();
        r6 = r6.length;
        if (r6 == 0) goto L_0x0065;
    L_0x002c:
        r1 = r5.getJointAccounts();
        r2 = "userModel.jointAccounts";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);
        r1 = r0.findConfirmedAccount(r1);
        r3.element = r1;
        r1 = r3.element;
        r1 = (ru.rocketbank.core.model.JointAccount) r1;
        if (r1 != 0) goto L_0x0049;
    L_0x0041:
        r1 = r5.getJointAccounts();
        r1 = r1[r7];
        r3.element = r1;
    L_0x0049:
        r1 = r3.element;
        r1 = (ru.rocketbank.core.model.JointAccount) r1;
        if (r1 == 0) goto L_0x0055;
    L_0x004f:
        r1 = r1.getJoint_user_name_instrumental();
        if (r1 != 0) goto L_0x0057;
    L_0x0055:
        r1 = "";
    L_0x0057:
        r2 = r3.element;
        r2 = (ru.rocketbank.core.model.JointAccount) r2;
        if (r2 == 0) goto L_0x0063;
    L_0x005d:
        r2 = r2.getJoint_user_avatar();
        if (r2 != 0) goto L_0x0065;
    L_0x0063:
        r2 = "";
    L_0x0065:
        r6 = r3.element;
        r6 = (ru.rocketbank.core.model.JointAccount) r6;
        if (r6 == 0) goto L_0x0075;
    L_0x006b:
        r6 = r3.element;
        r6 = (ru.rocketbank.core.model.JointAccount) r6;
        r6 = r6.isConfirmed();
        if (r6 != 0) goto L_0x00c0;
    L_0x0075:
        r6 = r5.getForeignJointAccounts();
        if (r6 == 0) goto L_0x00c0;
    L_0x007b:
        r6 = r5.getForeignJointAccounts();
        r6 = r6.length;
        if (r6 == 0) goto L_0x00c0;
    L_0x0082:
        r6 = r5.getForeignJointAccounts();
        r8 = "userModel.foreignJointAccounts";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r8);
        r6 = r0.findConfirmedAccount(r6);
        if (r6 == 0) goto L_0x0094;
    L_0x0091:
        r3.element = r6;
        goto L_0x00a2;
    L_0x0094:
        r8 = r3.element;
        r8 = (ru.rocketbank.core.model.JointAccount) r8;
        if (r8 != 0) goto L_0x00a2;
    L_0x009a:
        r5 = r5.getForeignJointAccounts();
        r6 = r5[r7];
        r3.element = r6;
    L_0x00a2:
        if (r6 == 0) goto L_0x00c0;
    L_0x00a4:
        r1 = r3.element;
        r1 = (ru.rocketbank.core.model.JointAccount) r1;
        if (r1 == 0) goto L_0x00b0;
    L_0x00aa:
        r1 = r1.getUser_name_instrumental();
        if (r1 != 0) goto L_0x00b2;
    L_0x00b0:
        r1 = "";
    L_0x00b2:
        r2 = r3.element;
        r2 = (ru.rocketbank.core.model.JointAccount) r2;
        if (r2 == 0) goto L_0x00be;
    L_0x00b8:
        r2 = r2.getUser_avatar();
        if (r2 != 0) goto L_0x00c0;
    L_0x00be:
        r2 = "";
    L_0x00c0:
        r7 = r1;
        r8 = r2;
        r1 = r0.profileAdapter;
        r2 = -1;
        if (r1 == 0) goto L_0x00cc;
    L_0x00c7:
        r1 = r1.getItemCount();
        goto L_0x00cd;
    L_0x00cc:
        r1 = r2;
    L_0x00cd:
        r0.analyticsItemPosition = r1;
        r1 = new ru.rocketbank.r2d2.fragments.profile.ProfileFragment$addJointAnalytics$onAnalyticsBind$1;
        r1.<init>(r0, r3);
        r17 = r1;
        r17 = (kotlin.jvm.functions.Function2) r17;
        r1 = r3.element;
        r1 = (ru.rocketbank.core.model.JointAccount) r1;
        r5 = 2131821133; // 0x7f11024d float:1.9275E38 double:1.053259585E-314;
        if (r1 == 0) goto L_0x0127;
    L_0x00e1:
        r1 = r3.element;
        r1 = (ru.rocketbank.core.model.JointAccount) r1;
        r1 = r1.isConfirmed();
        if (r1 == 0) goto L_0x00ed;
    L_0x00eb:
        r9 = r4;
        goto L_0x00f5;
    L_0x00ed:
        r1 = 2131821777; // 0x7f1104d1 float:1.9276307E38 double:1.053259903E-314;
        r4 = r0.getString(r1);
        goto L_0x00eb;
    L_0x00f5:
        r1 = r3.element;
        r1 = (ru.rocketbank.core.model.JointAccount) r1;
        r1 = r1.getId();
        if (r1 == 0) goto L_0x0103;
    L_0x00ff:
        r2 = r1.intValue();
    L_0x0103:
        r1 = r0.profileAdapter;
        if (r1 == 0) goto L_0x0126;
    L_0x0107:
        r6 = r0.getString(r5);
        r3 = "getString(R.string.joint_analytics)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r3);
        r10 = java.lang.Integer.valueOf(r2);
        r11 = 0;
        r3 = new ru.rocketbank.r2d2.fragments.profile.ProfileFragment$addJointAnalytics$1;
        r3.<init>(r0, r2);
        r12 = r3;
        r12 = (kotlin.jvm.functions.Function3) r12;
        r14 = 32;
        r15 = 0;
        r5 = r1;
        r13 = r17;
        ru.rocketbank.r2d2.adapters.ParallaxAdapter.addAnalytics$default(r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15);
    L_0x0126:
        return;
    L_0x0127:
        r9 = r0.profileAdapter;
        if (r9 == 0) goto L_0x0150;
    L_0x012b:
        r10 = r0.getString(r5);
        r1 = "getString(R.string.joint_analytics)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r10, r1);
        r11 = 0;
        r12 = 0;
        r1 = new ru.rocketbank.r2d2.fragments.profile.ProfileFragment$addJointAnalytics$2;
        r1.<init>(r0);
        r16 = r1;
        r16 = (kotlin.jvm.functions.Function3) r16;
        r1 = 2131821134; // 0x7f11024e float:1.9275003E38 double:1.0532595854E-314;
        r13 = r0.getString(r1);
        r14 = 0;
        r15 = 0;
        r18 = 54;
        r19 = 0;
        ru.rocketbank.r2d2.adapters.ParallaxAdapter.addAnalytics$default(r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19);
        return;
    L_0x0150:
        return;
    L_0x0151:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.profile.ProfileFragment.addJointAnalytics():void");
    }

    private final void jointAccount(Contact contact) {
        this.analyticsInProgress = true;
        ProfileAdapter profileAdapter = this.profileAdapter;
        if (profileAdapter != null) {
            profileAdapter.notifyItemChanged(this.analyticsItemPosition);
        }
        this.rocketAPI.jointAccounts(contact.getId()).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).subscribe((Action1) new ProfileFragment$jointAccount$1(this), (Action1) new ProfileFragment$jointAccount$2(this));
    }

    private final void switchJointAnalytics(int i, boolean z, AnalyticsProfileViewHolder analyticsProfileViewHolder) {
        if (z) {
            i = ChooseFriendActivity.Companion;
            z = getActivity();
            if (!z) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(z, "activity!!");
            i.startForResult((Activity) z, 555);
            return;
        }
        analyticsProfileViewHolder.setInProgress(true);
        this.rocketAPI.jointCancel(i, "").observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io()).subscribe((Action1) new ProfileFragment$switchJointAnalytics$1(this, analyticsProfileViewHolder), (Action1) new ProfileFragment$switchJointAnalytics$2(this, analyticsProfileViewHolder));
    }

    @SuppressLint({"SetTextI18n"})
    private final void refreshUserData() {
        Object stringBuilder;
        FragmentProfileBinding fragmentProfileBinding = this.fragmentProfileBinding;
        if (fragmentProfileBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        SwipeRefreshLayout swipeRefreshLayout = fragmentProfileBinding.swipeRefresh;
        Intrinsics.checkExpressionValueIsNotNull(swipeRefreshLayout, "swipeRefreshLayout");
        swipeRefreshLayout.setRefreshing(false);
        swipeRefreshLayout.destroyDrawingCache();
        swipeRefreshLayout.clearAnimation();
        UserModel userModel = this.userModel;
        if (userModel != null) {
            String firstName = userModel.getFirstName();
            if (firstName == null) {
                firstName = "";
            }
            String lastName = userModel.getLastName();
            if (lastName == null) {
                lastName = "";
            }
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append(firstName);
            stringBuilder2.append(' ');
            stringBuilder2.append(lastName);
            stringBuilder = stringBuilder2.toString();
        } else {
            stringBuilder = "";
        }
        ProfileData profileData = this.profileData;
        if (profileData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileData");
        }
        profileData.getUserName().set(stringBuilder);
        if (userModel != null) {
            FragmentProfileBinding fragmentProfileBinding2 = this.fragmentProfileBinding;
            if (fragmentProfileBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
            }
            ImageView imageView = fragmentProfileBinding2.userPic;
            int dimensionPixelSize = getResources().getDimensionPixelSize(C0859R.dimen.profile_userpic_size);
            UserModel userModel2 = this.userModel;
            if (userModel2 == null) {
                Intrinsics.throwNpe();
            }
            String userpicUrl = userModel2.getUserpicUrl();
            DrawableRequestBuilder override;
            Transformation[] transformationArr;
            CropCircleTransformation cropCircleTransformation;
            if (userpicUrl != null) {
                override = Glide.with(this).load(userpicUrl).diskCacheStrategy(DiskCacheStrategy.ALL).override(dimensionPixelSize, dimensionPixelSize);
                transformationArr = new Transformation[1];
                cropCircleTransformation = this.cropCircleTransformation;
                if (cropCircleTransformation == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cropCircleTransformation");
                }
                transformationArr[0] = cropCircleTransformation;
                override.bitmapTransform(transformationArr).into(imageView);
            } else {
                userpicUrl = "male";
                UserModel userModel3 = this.userModel;
                if (userModel3 == null) {
                    Intrinsics.throwNpe();
                }
                override = Glide.with(this).load(Integer.valueOf(StringsKt.equals(userpicUrl, userModel3.getGender(), true) ? C0859R.drawable.ic_avatar_boy : C0859R.drawable.ic_avatar_girl)).diskCacheStrategy(DiskCacheStrategy.ALL).override(dimensionPixelSize, dimensionPixelSize);
                transformationArr = new Transformation[1];
                cropCircleTransformation = this.cropCircleTransformation;
                if (cropCircleTransformation == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cropCircleTransformation");
                }
                transformationArr[0] = cropCircleTransformation;
                override.bitmapTransform(transformationArr).into(imageView);
            }
            CoverModel cover = userModel.getCover();
            if (this.windowWidth > 0) {
                Intrinsics.checkExpressionValueIsNotNull(cover, "coverModel");
                loadCoverWithResize(cover);
            } else {
                Intrinsics.checkExpressionValueIsNotNull(cover, "coverModel");
                loadCover(cover);
            }
            fillAdapterWithData();
        }
    }

    private final void loadCover(CoverModel coverModel) {
        FragmentProfileBinding fragmentProfileBinding = this.fragmentProfileBinding;
        if (fragmentProfileBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        ImageView imageView = fragmentProfileBinding.coverImage;
        UserData userData;
        Cobrand fromCobrandName;
        if (coverModel.getUrl() != null) {
            coverModel = Glide.with(this).load(coverModel.getUrl()).diskCacheStrategy(DiskCacheStrategy.ALL).centerCrop().placeholder(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
            userData = this.authorization.getUserData();
            if (userData != null) {
                fromCobrandName = Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName());
                if (fromCobrandName != null) {
                    coverModel.error(fromCobrandName.getDrawableResId()).into(imageView);
                    return;
                }
            }
            fromCobrandName = Cobrand.ROCKETBANK;
            coverModel.error(fromCobrandName.getDrawableResId()).into(imageView);
            return;
        }
        coverModel = Glide.with(this);
        userData = this.authorization.getUserData();
        if (userData != null) {
            fromCobrandName = Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName());
            if (fromCobrandName != null) {
                coverModel = coverModel.load(Integer.valueOf(fromCobrandName.getDrawableResId())).diskCacheStrategy(DiskCacheStrategy.ALL).centerCrop().placeholder(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
                userData = this.authorization.getUserData();
                if (userData != null) {
                    fromCobrandName = Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName());
                    if (fromCobrandName != null) {
                        coverModel.error(fromCobrandName.getDrawableResId()).into(imageView);
                    }
                }
                fromCobrandName = Cobrand.ROCKETBANK;
                coverModel.error(fromCobrandName.getDrawableResId()).into(imageView);
            }
        }
        fromCobrandName = Cobrand.ROCKETBANK;
        coverModel = coverModel.load(Integer.valueOf(fromCobrandName.getDrawableResId())).diskCacheStrategy(DiskCacheStrategy.ALL).centerCrop().placeholder(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
        userData = this.authorization.getUserData();
        if (userData != null) {
            fromCobrandName = Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName());
            if (fromCobrandName != null) {
                coverModel.error(fromCobrandName.getDrawableResId()).into(imageView);
            }
        }
        fromCobrandName = Cobrand.ROCKETBANK;
        coverModel.error(fromCobrandName.getDrawableResId()).into(imageView);
    }

    private final void loadCoverWithResize(CoverModel coverModel) {
        FragmentProfileBinding fragmentProfileBinding = this.fragmentProfileBinding;
        if (fragmentProfileBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentProfileBinding");
        }
        ImageView imageView = fragmentProfileBinding.coverImage;
        UserData userData;
        Cobrand fromCobrandName;
        if (coverModel.getUrl() != null) {
            coverModel = Glide.with(this).load(coverModel.getUrl()).diskCacheStrategy(DiskCacheStrategy.ALL).centerCrop().placeholder(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
            userData = this.authorization.getUserData();
            if (userData != null) {
                fromCobrandName = Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName());
                if (fromCobrandName != null) {
                    coverModel = coverModel.error(fromCobrandName.getDrawableResId());
                    if (imageView == null) {
                        Intrinsics.throwNpe();
                    }
                    coverModel.into(imageView);
                    return;
                }
            }
            fromCobrandName = Cobrand.ROCKETBANK;
            coverModel = coverModel.error(fromCobrandName.getDrawableResId());
            if (imageView == null) {
                Intrinsics.throwNpe();
            }
            coverModel.into(imageView);
            return;
        }
        coverModel = Glide.with(this);
        userData = this.authorization.getUserData();
        if (userData != null) {
            fromCobrandName = Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName());
            if (fromCobrandName != null) {
                coverModel = coverModel.load(Integer.valueOf(fromCobrandName.getDrawableResId())).diskCacheStrategy(DiskCacheStrategy.ALL).centerCrop().placeholder(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
                userData = this.authorization.getUserData();
                if (userData != null) {
                    fromCobrandName = Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName());
                    if (fromCobrandName != null) {
                        coverModel = coverModel.error(fromCobrandName.getDrawableResId());
                        if (imageView == null) {
                            Intrinsics.throwNpe();
                        }
                        coverModel.into(imageView);
                    }
                }
                fromCobrandName = Cobrand.ROCKETBANK;
                coverModel = coverModel.error(fromCobrandName.getDrawableResId());
                if (imageView == null) {
                    Intrinsics.throwNpe();
                }
                coverModel.into(imageView);
            }
        }
        fromCobrandName = Cobrand.ROCKETBANK;
        coverModel = coverModel.load(Integer.valueOf(fromCobrandName.getDrawableResId())).diskCacheStrategy(DiskCacheStrategy.ALL).centerCrop().placeholder(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
        userData = this.authorization.getUserData();
        if (userData != null) {
            fromCobrandName = Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName());
            if (fromCobrandName != null) {
                coverModel = coverModel.error(fromCobrandName.getDrawableResId());
                if (imageView == null) {
                    Intrinsics.throwNpe();
                }
                coverModel.into(imageView);
            }
        }
        fromCobrandName = Cobrand.ROCKETBANK;
        coverModel = coverModel.error(fromCobrandName.getDrawableResId());
        if (imageView == null) {
            Intrinsics.throwNpe();
        }
        coverModel.into(imageView);
    }

    private final Observable<UploadImageResponse> uploadObservable(Bitmap bitmap) {
        try {
            StringBuilder stringBuilder = new StringBuilder("file_");
            stringBuilder.append(String.valueOf(System.currentTimeMillis()));
            File createTempFile = File.createTempFile(stringBuilder.toString(), ".jpg");
            Intrinsics.checkExpressionValueIsNotNull(createTempFile, "File.createTempFile(\"fil…lis().toString(), \".jpg\")");
            String absolutePath = createTempFile.getAbsolutePath();
            Intrinsics.checkExpressionValueIsNotNull(absolutePath, "file.absolutePath");
            bitmap = Observable.just(bitmap).flatMap(new ProfileFragment$uploadObservable$2(this, createTempFile)).doOnUnsubscribe(new ProfileFragment$uploadObservable$3(createTempFile, absolutePath));
            Intrinsics.checkExpressionValueIsNotNull(bitmap, "Observable.just(bitmap).…)\n            }\n        }");
            return bitmap;
        } catch (Bitmap bitmap2) {
            bitmap2 = Observable.create((OnSubscribe) new ProfileFragment$uploadObservable$1(bitmap2));
            Intrinsics.checkExpressionValueIsNotNull(bitmap2, "Observable.create { subs…> subscriber.onError(e) }");
            return bitmap2;
        }
    }

    private final Observable<Bitmap> observableFromGallery(Intent intent) {
        ImageUpload imageUpload = ImageUpload.INSTANCE;
        Uri data = intent.getData();
        Intrinsics.checkExpressionValueIsNotNull(data, "data.data");
        return imageUpload.observableFromGallery(data);
    }

    private final Observable<Bitmap> observableFromCamera() {
        Observable<Bitmap> observeOn = Observable.just(this.cameraPhotoPath).map(ProfileFragment$observableFromCamera$1.INSTANCE).subscribeOn(Schedulers.computation()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(observeOn, "Observable.just<String>(…dSchedulers.mainThread())");
        return observeOn;
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == OPEN_SECURITY_SETTINGS_REQUEST_CODE) {
            updateFingerprint();
        } else if (i2 == -1) {
            if (i == 555) {
                if (!(intent == null || intent.hasExtra(ChooseFriendActivity.Companion.getKEY_CONTACT()) == 0)) {
                    i = intent.getSerializableExtra(ChooseFriendActivity.Companion.getKEY_CONTACT());
                    if (i == 0) {
                        throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.contact.Contact");
                    }
                    jointAccount((Contact) i);
                }
            } else if (i == 64206) {
                getSocialNet().onActivityResult(i, i2, intent);
            } else if (i == ImageUpload.REQUEST_AVATAR_FROM_CAMERA) {
                showProgressDialog();
                uploadAvatarWithCamera();
            } else if (i == ImageUpload.REQUEST_AVATAR_FROM_GALLERY) {
                showProgressDialog();
                if (!(intent == null || intent.getData() == 0)) {
                    observableFromGallery(intent).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new ProfileFragment$onActivityResult$1(this));
                }
            } else if (i == ImageUpload.REQUEST_COVER_FROM_CAMERA) {
                showProgressDialog();
                uploadCoverFromCamera();
            } else if (i == ImageUpload.REQUEST_COVER_FROM_GALLERY) {
                showProgressDialog();
                if (!(intent == null || intent.getData() == 0)) {
                    observableFromGallery(intent).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new ProfileFragment$onActivityResult$2(this));
                }
            }
        }
    }

    private final void uploadCoverFromCamera() {
        int i;
        String str = this.cameraPhotoPath;
        if (str != null) {
            ImageUpload.INSTANCE.observableFromCamera(str, this.windowWidth).subscribe((Subscriber) new ProfileFragment$uploadCoverFromCamera$$inlined$let$lambda$1(this));
            i = 1;
        } else {
            i = 0;
        }
        if (i == 0) {
            Toast.makeText(getActivity(), C0859R.string.no_luck, 0).show();
        }
    }

    private final void uploadAvatarWithCamera() {
        String str = this.cameraPhotoPath;
        if (str != null) {
            ImageUpload.INSTANCE.observableFromCamera(str, this.windowWidth).subscribe((Subscriber) new ProfileFragment$uploadAvatarWithCamera$$inlined$let$lambda$1(this));
        }
    }

    private final void uploadCover(Bitmap bitmap) {
        bitmap = Utils.shrinkToSize(bitmap, 1920);
        Intrinsics.checkExpressionValueIsNotNull(bitmap, "Utils.shrinkToSize(bitmap, 1920)");
        this.uploadSubscription = uploadObservable(bitmap).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new ProfileFragment$uploadCover$1(this));
    }

    private final void uploadAvatar(Bitmap bitmap) {
        if (bitmap.getHeight() > bitmap.getWidth()) {
            bitmap = Bitmap.createBitmap(bitmap, 0, (bitmap.getHeight() - bitmap.getWidth()) / 2, bitmap.getWidth(), bitmap.getWidth());
            Intrinsics.checkExpressionValueIsNotNull(bitmap, "Bitmap.createBitmap(bitm…tmap.width, bitmap.width)");
        } else {
            bitmap = Bitmap.createBitmap(bitmap, (bitmap.getWidth() - bitmap.getHeight()) / 2, 0, bitmap.getHeight(), bitmap.getHeight());
            Intrinsics.checkExpressionValueIsNotNull(bitmap, "Bitmap.createBitmap(bitm…ap.height, bitmap.height)");
        }
        if (bitmap.getWidth() > 1024) {
            bitmap = Bitmap.createScaledBitmap(bitmap, 1024, 1024, true);
            Intrinsics.checkExpressionValueIsNotNull(bitmap, "Bitmap.createScaledBitma…bitmap, 1024, 1024, true)");
        }
        showProgressDialog();
        this.uploadSubscription = uploadObservable(bitmap).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new ProfileFragment$uploadAvatar$1(this));
    }

    private final boolean checkOrRequestGallery(int i) {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        int checkSelfPermission = ContextCompat.checkSelfPermission(context, "android.permission.READ_EXTERNAL_STORAGE");
        ArrayList arrayList = new ArrayList();
        if (checkSelfPermission != 0) {
            arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        Object[] toArray = arrayList.toArray(new String[0]);
        if (toArray == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        requestPermissions((String[]) toArray, i);
        return false;
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        ObservableParallaxListener observableParallaxListener = this.parallaxListener;
        if (observableParallaxListener != null) {
            observableParallaxListener.onSaveInstanceState(bundle);
        }
    }

    private final boolean checkOrRequestCamera(int i) {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        int checkSelfPermission = ContextCompat.checkSelfPermission(context, "android.permission.READ_EXTERNAL_STORAGE");
        Context context2 = getContext();
        if (context2 == null) {
            Intrinsics.throwNpe();
        }
        int checkSelfPermission2 = ContextCompat.checkSelfPermission(context2, "android.permission.WRITE_EXTERNAL_STORAGE");
        Context context3 = getContext();
        if (context3 == null) {
            Intrinsics.throwNpe();
        }
        int checkSelfPermission3 = ContextCompat.checkSelfPermission(context3, "android.permission.CAMERA");
        ArrayList arrayList = new ArrayList();
        if (checkSelfPermission != 0) {
            arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
        }
        if (checkSelfPermission2 != 0) {
            arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
        }
        if (checkSelfPermission3 != 0) {
            arrayList.add("android.permission.CAMERA");
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        Object[] toArray = arrayList.toArray(new String[0]);
        if (toArray == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        requestPermissions((String[]) toArray, i);
        return false;
    }

    private final void onSetAvatarFromCameraRequested() {
        if (VERSION.SDK_INT < 23 || checkOrRequestCamera(0)) {
            startGetFromCameraRequest();
        }
    }

    private final void startGetFromCameraRequest() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r7 = this;
        r0 = new android.content.Intent;
        r1 = "android.media.action.IMAGE_CAPTURE";
        r0.<init>(r1);
        r1 = r7.createImageFile();
        r2 = "output";
        r3 = r1.getUri();
        r3 = (android.os.Parcelable) r3;
        r0.putExtra(r2, r3);
        r2 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Exception -> 0x008a }
        r3 = 21;	 Catch:{ Exception -> 0x008a }
        if (r2 >= r3) goto L_0x0084;	 Catch:{ Exception -> 0x008a }
    L_0x001c:
        r2 = r7.getContext();	 Catch:{ Exception -> 0x008a }
        if (r2 != 0) goto L_0x0025;	 Catch:{ Exception -> 0x008a }
    L_0x0022:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x008a }
    L_0x0025:
        r3 = "context!!";	 Catch:{ Exception -> 0x008a }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3);	 Catch:{ Exception -> 0x008a }
        r2 = r2.getPackageManager();	 Catch:{ Exception -> 0x008a }
        r3 = 65536; // 0x10000 float:9.18355E-41 double:3.2379E-319;	 Catch:{ Exception -> 0x008a }
        r2 = r2.queryIntentActivities(r0, r3);	 Catch:{ Exception -> 0x008a }
        r3 = "resInfoList";	 Catch:{ Exception -> 0x008a }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3);	 Catch:{ Exception -> 0x008a }
        r2 = (java.lang.Iterable) r2;	 Catch:{ Exception -> 0x008a }
        r3 = new java.util.ArrayList;	 Catch:{ Exception -> 0x008a }
        r4 = kotlin.collections.CollectionsKt.collectionSizeOrDefault$251b5948(r2);	 Catch:{ Exception -> 0x008a }
        r3.<init>(r4);	 Catch:{ Exception -> 0x008a }
        r3 = (java.util.Collection) r3;	 Catch:{ Exception -> 0x008a }
        r2 = r2.iterator();	 Catch:{ Exception -> 0x008a }
    L_0x004a:
        r4 = r2.hasNext();	 Catch:{ Exception -> 0x008a }
        if (r4 == 0) goto L_0x005e;	 Catch:{ Exception -> 0x008a }
    L_0x0050:
        r4 = r2.next();	 Catch:{ Exception -> 0x008a }
        r4 = (android.content.pm.ResolveInfo) r4;	 Catch:{ Exception -> 0x008a }
        r4 = r4.activityInfo;	 Catch:{ Exception -> 0x008a }
        r4 = r4.packageName;	 Catch:{ Exception -> 0x008a }
        r3.add(r4);	 Catch:{ Exception -> 0x008a }
        goto L_0x004a;	 Catch:{ Exception -> 0x008a }
    L_0x005e:
        r3 = (java.util.List) r3;	 Catch:{ Exception -> 0x008a }
        r3 = (java.lang.Iterable) r3;	 Catch:{ Exception -> 0x008a }
        r2 = r3.iterator();	 Catch:{ Exception -> 0x008a }
    L_0x0066:
        r3 = r2.hasNext();	 Catch:{ Exception -> 0x008a }
        if (r3 == 0) goto L_0x0084;	 Catch:{ Exception -> 0x008a }
    L_0x006c:
        r3 = r2.next();	 Catch:{ Exception -> 0x008a }
        r3 = (java.lang.String) r3;	 Catch:{ Exception -> 0x008a }
        r4 = r7.getContext();	 Catch:{ Exception -> 0x008a }
        if (r4 != 0) goto L_0x007b;	 Catch:{ Exception -> 0x008a }
    L_0x0078:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x008a }
    L_0x007b:
        r5 = r1.getUri();	 Catch:{ Exception -> 0x008a }
        r6 = 3;	 Catch:{ Exception -> 0x008a }
        r4.grantUriPermission(r3, r5, r6);	 Catch:{ Exception -> 0x008a }
        goto L_0x0066;	 Catch:{ Exception -> 0x008a }
    L_0x0084:
        r1 = ru.rocketbank.r2d2.utils.ImageUpload.REQUEST_AVATAR_FROM_CAMERA;	 Catch:{ Exception -> 0x008a }
        r7.startActivityForResult(r0, r1);	 Catch:{ Exception -> 0x008a }
        return;
    L_0x008a:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.profile.ProfileFragment.startGetFromCameraRequest():void");
    }

    private final void onSetAvatarFromGalleryRequested() {
        if (VERSION.SDK_INT < 23 || checkOrRequestGallery(2)) {
            startSetAvatarFromGalleryRequested();
        }
    }

    private final void startSetAvatarFromGalleryRequested() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r3 = this;
        r0 = new android.content.Intent;
        r1 = "android.intent.action.PICK";
        r2 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        r0.<init>(r1, r2);
        r1 = ru.rocketbank.r2d2.utils.ImageUpload.REQUEST_AVATAR_FROM_GALLERY;	 Catch:{ Exception -> 0x000f }
        r3.startActivityForResult(r0, r1);	 Catch:{ Exception -> 0x000f }
        return;
    L_0x000f:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.profile.ProfileFragment.startSetAvatarFromGalleryRequested():void");
    }

    private final void onSetCoverFromCameraRequested() {
        if (VERSION.SDK_INT < 23 || checkOrRequestCamera(1)) {
            startSetCoverFromCameraRequested();
        }
    }

    private final void startSetCoverFromCameraRequested() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        ExternalFile createImageFile = createImageFile();
        intent.putExtra("output", createImageFile.getUri());
        if (VERSION.SDK_INT < 21) {
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            List queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
            Intrinsics.checkExpressionValueIsNotNull(queryIntentActivities, "resInfoList");
            Iterable<ResolveInfo> iterable = queryIntentActivities;
            Collection arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
            for (ResolveInfo resolveInfo : iterable) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
            for (String str : (List) arrayList) {
                Context context2 = getContext();
                if (context2 == null) {
                    Intrinsics.throwNpe();
                }
                context2.grantUriPermission(str, createImageFile.getUri(), 3);
            }
        }
        try {
            startActivityForResult(intent, ImageUpload.REQUEST_COVER_FROM_CAMERA);
        } catch (Exception e) {
            AnalyticsManager.logException(e);
        }
    }

    private final void onSetCoverFromGalleryRequested() {
        if (VERSION.SDK_INT < 23 || checkOrRequestGallery(3)) {
            startSetCoverFromGalleryRequested();
        }
    }

    private final void startSetCoverFromGalleryRequested() {
        try {
            startActivityForResult(new Intent("android.intent.action.PICK", Media.EXTERNAL_CONTENT_URI), ImageUpload.REQUEST_COVER_FROM_GALLERY);
        } catch (Exception e) {
            AnalyticsManager.logException(e);
        }
    }

    private final ExternalFile createImageFile() {
        StringBuilder stringBuilder = new StringBuilder("photo_");
        Calendar instance = Calendar.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(instance, "Calendar.getInstance()");
        stringBuilder.append(instance.getTimeInMillis());
        ExternalFile createPublicImageFile = RocketApplication.Companion.getInjector().getFileManager().createPublicImageFile(stringBuilder.toString(), "jpg");
        this.cameraPhotoPath = createPublicImageFile.getAbsolutePath();
        return createPublicImageFile;
    }

    private final void onSetAvatarClick() {
        if (getActivity() != null) {
            FragmentActivity activity = getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
            }
            Builder builder = new Builder(activity);
            builder.setItems(isAvatarSet() ? C0859R.array.change_avatar_menu : C0859R.array.change_empty_avatar_menu, new ProfileFragment$onSetAvatarClick$1(this));
            builder.create().show();
        }
    }

    private final void onAvatarFromFacebook() {
        patchFacebook(getSocialNet().getAvatarID(), true);
    }

    private final void patchFacebook(String str, boolean z) {
        try {
            getSocialNet().authorize(this, new ProfileFragment$patchFacebook$1(this, z, str));
        } catch (String str2) {
            AnalyticsManager.logException(str2);
        }
    }

    private final void clearCover() {
        showProgressDialog();
        Observable.just(Request.LINK_API).subscribeOn(Schedulers.io()).map(ProfileFragment$clearCover$1.INSTANCE).observeOn(AndroidSchedulers.mainThread()).subscribe((Observer) new ProfileFragment$clearCover$2(this));
    }

    private final void clearAvatar() {
        showProgressDialog();
        Observable.just(getString(C0859R.string.server_url)).subscribeOn(Schedulers.io()).map(ProfileFragment$clearAvatar$1.INSTANCE).observeOn(AndroidSchedulers.mainThread()).subscribe((Observer) new ProfileFragment$clearAvatar$2(this));
    }

    private final void onSetCoverClick() {
        if (getActivity() != null) {
            FragmentActivity activity = getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
            }
            Builder builder = new Builder(activity);
            builder.setItems(isCoverSet() ? C0859R.array.change_cover_menu : C0859R.array.change_empty_cover_menu, new ProfileFragment$onSetCoverClick$1(this));
            builder.create().show();
        }
    }

    private final void onFacebookCover() {
        patchFacebook(getSocialNet().getAvatarID(), false);
    }

    private final boolean isAvatarSet() {
        UserModel userModel = this.userModel;
        if (userModel == null) {
            Intrinsics.throwNpe();
        }
        return !TextUtils.isEmpty((CharSequence) userModel.getUserpicUrl());
    }

    private final boolean isCoverSet() {
        UserModel userModel = this.userModel;
        if (userModel == null) {
            Intrinsics.throwNpe();
        }
        if (userModel.getCover() != null) {
            userModel = this.userModel;
            if (userModel == null) {
                Intrinsics.throwNpe();
            }
            if (!TextUtils.isEmpty(userModel.getCover().getUrl())) {
                return true;
            }
        }
        return false;
    }

    private final void onRefillLinkClick() {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Builder builder = new Builder(activity);
        builder.setItems(C0859R.array.refill_page_actions, new ProfileFragment$onRefillLinkClick$1(this));
        builder.create().show();
    }

    private final void openLink() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(RocketConstants.INSTANCE.getLINK());
        UserModel userModel = this.userModel;
        if (userModel == null) {
            Intrinsics.throwNpe();
        }
        UsernameModel username = userModel.getUsername();
        Intrinsics.checkExpressionValueIsNotNull(username, "userModel!!.username");
        stringBuilder.append(username.getValue());
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(stringBuilder.toString()));
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        if (intent.resolveActivity(activity.getPackageManager()) != null) {
            startActivity(intent);
        }
    }

    private final void onChangeRefillLinkRequested() {
        unsubscribe(this.changeNameSubscription);
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Builder builder = new Builder(activity);
        builder.setTitle("Имя странички");
        EditText editText = new EditText(getActivity());
        UserModel userModel = this.userModel;
        if (userModel == null) {
            Intrinsics.throwNpe();
        }
        UsernameModel username = userModel.getUsername();
        Intrinsics.checkExpressionValueIsNotNull(username, "userModel!!.username");
        editText.setText(username.getValue());
        builder.setView(editText);
        builder.setPositiveButton(17039370, new ProfileFragment$onChangeRefillLinkRequested$1(this, editText));
        builder.show();
    }

    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Intrinsics.checkParameterIsNotNull(strArr, NativeProtocol.RESULT_ARGS_PERMISSIONS);
        Intrinsics.checkParameterIsNotNull(iArr, "grantResults");
        int i2 = 0;
        int length = iArr.length;
        while (i2 < length) {
            if (iArr[i2] != -1 || strArr[i2] == null) {
                i2++;
            } else {
                Toast.makeText(getContext(), 2131821342, 1).show();
                return;
            }
        }
        switch (i) {
            case 0:
                startGetFromCameraRequest();
                return;
            case 1:
                startSetCoverFromCameraRequested();
                return;
            case 2:
                startSetAvatarFromGalleryRequested();
                return;
            case 3:
                startSetCoverFromGalleryRequested();
                break;
            default:
                break;
        }
    }

    public final void onAvatarChange(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        onSetAvatarClick();
    }

    public final void onCoverChange(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        onSetCoverClick();
    }

    private final JointAccount findConfirmedAccount(JointAccount[] jointAccountArr) {
        for (JointAccount jointAccount : jointAccountArr) {
            if (jointAccount.isConfirmed()) {
                return jointAccount;
            }
        }
        return null;
    }
}
