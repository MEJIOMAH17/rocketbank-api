package ru.rocketbank.r2d2.fragments.profile;

import android.support.v4.app.Fragment;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.Transformation;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.core.model.CoverModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.profile.ProfileHandler;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: ImageViewHolder.kt */
public final class ImageViewHolder extends GenericViewHolder implements OnClickListener {
    private final CropCircleTransformation cropCircleTransformation;
    private final Fragment fragment;
    private final ImageView imageView;
    private final ProfileHandler profileHandler;
    private final RocketTextView titleView;
    private UserData userData;
    private UserModel userModel;
    private final RocketTextView valueView;

    public final Fragment getFragment() {
        return this.fragment;
    }

    public final CropCircleTransformation getCropCircleTransformation() {
        return this.cropCircleTransformation;
    }

    public ImageViewHolder(View view, Fragment fragment, CropCircleTransformation cropCircleTransformation, ProfileHandler profileHandler) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        Intrinsics.checkParameterIsNotNull(fragment, "fragment");
        Intrinsics.checkParameterIsNotNull(cropCircleTransformation, "cropCircleTransformation");
        Intrinsics.checkParameterIsNotNull(profileHandler, "profileHandler");
        super(view);
        this.fragment = fragment;
        this.cropCircleTransformation = cropCircleTransformation;
        this.profileHandler = profileHandler;
        fragment = view.findViewById(C0859R.id.image);
        if (fragment == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.imageView = (ImageView) fragment;
        fragment = view.findViewById(C0859R.id.value);
        if (fragment == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.valueView = (RocketTextView) fragment;
        fragment = view.findViewById(C0859R.id.title);
        if (fragment == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.titleView = (RocketTextView) fragment;
        view.setOnClickListener(this);
    }

    public final ProfileHandler getProfileHandler() {
        return this.profileHandler;
    }

    public final void onBind(String str, String str2, UserModel userModel, UserData userData) {
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        this.titleView.setText(str2);
        this.valueView.setText(str);
        this.userModel = userModel;
        this.userData = userData;
        str = getItem();
        if (str != null) {
            if (str.getType() == ProfileAdapter.Companion.getIMAGE_AVATAR()) {
                setAvatar();
                return;
            }
            setCover();
        }
    }

    private final void setAvatar() {
        int dimensionPixelSize = this.fragment.getResources().getDimensionPixelSize(C0859R.dimen.image_size);
        UserModel userModel = this.userModel;
        String str = null;
        String userpicUrl = userModel != null ? userModel.getUserpicUrl() : null;
        if (userpicUrl != null) {
            Glide.with(this.fragment).load(userpicUrl).override(dimensionPixelSize, dimensionPixelSize).bitmapTransform(new Transformation[]{this.cropCircleTransformation}).into(this.imageView);
            return;
        }
        userpicUrl = "male";
        UserModel userModel2 = this.userModel;
        if (userModel2 != null) {
            str = userModel2.getGender();
        }
        Glide.with(this.fragment).load(Integer.valueOf(StringsKt.equals(userpicUrl, str, true) ? C0859R.drawable.profile_ava_boy : C0859R.drawable.profile_ava_girl)).override(dimensionPixelSize, dimensionPixelSize).bitmapTransform(new Transformation[]{this.cropCircleTransformation}).into(this.imageView);
    }

    private final void setCover() {
        int dimensionPixelSize = this.fragment.getResources().getDimensionPixelSize(C0859R.dimen.image_size);
        UserModel userModel = this.userModel;
        String str = null;
        CoverModel cover = userModel != null ? userModel.getCover() : null;
        if (cover != null) {
            str = cover.getUrl();
        }
        if (str != null) {
            Glide.with(this.fragment).load(str).override(dimensionPixelSize, dimensionPixelSize).bitmapTransform(new Transformation[]{this.cropCircleTransformation}).into(this.imageView);
            return;
        }
        Cobrand fromCobrandName;
        RequestManager with = Glide.with(this.fragment);
        UserData userData = this.userData;
        if (userData != null) {
            fromCobrandName = Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName());
            if (fromCobrandName != null) {
                with.load(Integer.valueOf(fromCobrandName.getDrawableResId())).override(dimensionPixelSize, dimensionPixelSize).bitmapTransform(new Transformation[]{this.cropCircleTransformation}).into(this.imageView);
            }
        }
        fromCobrandName = Cobrand.ROCKETBANK;
        with.load(Integer.valueOf(fromCobrandName.getDrawableResId())).override(dimensionPixelSize, dimensionPixelSize).bitmapTransform(new Transformation[]{this.cropCircleTransformation}).into(this.imageView);
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        ParallaxItem item = getItem();
        if (item != null) {
            if (item.getType() == ProfileAdapter.Companion.getIMAGE_AVATAR()) {
                this.profileHandler.onAvatarChange(view);
                return;
            }
            this.profileHandler.onCoverChange(view);
        }
    }
}
