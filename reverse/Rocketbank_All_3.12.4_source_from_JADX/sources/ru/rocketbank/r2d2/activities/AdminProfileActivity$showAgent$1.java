package ru.rocketbank.r2d2.activities;

import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.utils.ImageHelper.ImageLoadListener;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: AdminProfileActivity.kt */
public final class AdminProfileActivity$showAgent$1 implements ImageLoadListener {
    final /* synthetic */ ImageView $avatarImageView;
    final /* synthetic */ ProgressBar $imageProgressBar;

    AdminProfileActivity$showAgent$1(ImageView imageView, ProgressBar progressBar) {
        this.$avatarImageView = imageView;
        this.$imageProgressBar = progressBar;
    }

    public final void onError(Exception exception) {
        Intrinsics.checkParameterIsNotNull(exception, "e");
        Toast.makeText(this.$avatarImageView.getContext(), C0859R.string.photo_error_occur, 1).show();
        ProgressBar progressBar = this.$imageProgressBar;
        Intrinsics.checkExpressionValueIsNotNull(progressBar, "imageProgressBar");
        progressBar.setVisibility(8);
        AnalyticsManager.logException(exception, "AdminProfileActivity");
    }

    public final void onLoad(GlideDrawable glideDrawable) {
        Intrinsics.checkParameterIsNotNull(glideDrawable, "resource");
        glideDrawable = this.$imageProgressBar;
        Intrinsics.checkExpressionValueIsNotNull(glideDrawable, "imageProgressBar");
        glideDrawable.setVisibility(8);
    }
}
