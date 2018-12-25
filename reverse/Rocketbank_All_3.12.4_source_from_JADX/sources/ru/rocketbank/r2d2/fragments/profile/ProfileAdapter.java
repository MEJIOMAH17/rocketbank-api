package ru.rocketbank.r2d2.fragments.profile;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.adapters.ParallaxAdapter;
import ru.rocketbank.r2d2.data.binding.profile.ProfileData;
import ru.rocketbank.r2d2.data.binding.profile.ProfileHandler;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: ProfileAdapter.kt */
public final class ProfileAdapter extends ParallaxAdapter {
    public static final Companion Companion = new Companion();
    private static final int FINGERPRINT = 1001;
    private static final int IMAGE_AVATAR = 100;
    private static final int IMAGE_COVER = 101;
    private static final int MIN_3_ENT = 10001;
    private static final int REFILL_ID = 10000;
    private static final int VIEW_TYPE_IMAGE = 101;
    private final ProfileFragment fragment;
    private final ProfileHandler profileHandler;
    private final RecyclerView recyclerView;
    private final UserData userData;
    private UserModel userModel;

    /* compiled from: ProfileAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public final int getIMAGE_AVATAR() {
            return ProfileAdapter.IMAGE_AVATAR;
        }

        public final int getIMAGE_COVER() {
            return ProfileAdapter.IMAGE_COVER;
        }

        public final int getREFILL_ID() {
            return ProfileAdapter.REFILL_ID;
        }

        public final int getMIN_3_ENT() {
            return ProfileAdapter.MIN_3_ENT;
        }

        public final int getFINGERPRINT() {
            return ProfileAdapter.FINGERPRINT;
        }

        public final int getVIEW_TYPE_IMAGE() {
            return ProfileAdapter.VIEW_TYPE_IMAGE;
        }
    }

    public final ProfileFragment getFragment() {
        return this.fragment;
    }

    public final UserModel getUserModel() {
        return this.userModel;
    }

    public final void setUserModel(UserModel userModel) {
        this.userModel = userModel;
    }

    public final RecyclerView getRecyclerView() {
        return this.recyclerView;
    }

    public final ProfileHandler getProfileHandler() {
        return this.profileHandler;
    }

    public final UserData getUserData() {
        return this.userData;
    }

    public ProfileAdapter(ProfileFragment profileFragment, UserModel userModel, RecyclerView recyclerView, ProfileHandler profileHandler, ProfileData profileData, UserData userData, View view, int i) {
        Intrinsics.checkParameterIsNotNull(profileFragment, "fragment");
        Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
        Intrinsics.checkParameterIsNotNull(profileHandler, "profileHandler");
        Intrinsics.checkParameterIsNotNull(profileData, "profileData");
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        Intrinsics.checkParameterIsNotNull(view, "appBarLayout");
        super(profileData, view, i);
        this.fragment = profileFragment;
        this.userModel = userModel;
        this.recyclerView = recyclerView;
        this.profileHandler = profileHandler;
        this.userData = userData;
    }

    public final void updateUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        this.userModel = userModel;
        notifyDataSetChanged();
    }

    public final GenericViewHolder onCreateCustomViewType(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        if (i != VIEW_TYPE_IMAGE) {
            return new GenericViewHolder(from.inflate(C0859R.layout.feed_item_loading, viewGroup, false));
        }
        viewGroup = from.inflate(C0859R.layout.profile_item_image, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
        return (GenericViewHolder) new ImageViewHolder(viewGroup, this.fragment, this.fragment.getCropCircleTransformation(), this.profileHandler);
    }

    public final void onBindCustomViewType(GenericViewHolder genericViewHolder, int i, int i2) {
        if (i2 != VIEW_TYPE_IMAGE) {
            return;
        }
        if (genericViewHolder == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.profile.ImageViewHolder");
        }
        onBindImage((ImageViewHolder) genericViewHolder);
    }

    private final void onBindImage(ImageViewHolder imageViewHolder) {
        ParallaxItem item = imageViewHolder.getItem();
        String str = null;
        String subtitle = item != null ? item.getSubtitle() : null;
        if (item != null) {
            str = item.getTitle();
        }
        imageViewHolder.onBind(subtitle, str, this.userModel, this.userData);
    }

    public final void clear() {
        getItems().clear();
        notifyDataSetChanged();
    }

    public final void clearTop() {
        getItems().clear();
        this.recyclerView.requestLayout();
        notifyDataSetChanged();
    }
}
