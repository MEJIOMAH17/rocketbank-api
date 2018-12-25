package ru.rocketbank.r2d2.registration.new_passport;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.AppCompatImageView;
import android.view.View;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: ImageResultFragment.kt */
public final class ImageResultFragment extends NewPassportFragment {
    public static final Companion Companion = new Companion();
    private static final String KEY_PATH = "PATH";
    private static final String KEY_PHOTO_TITLE = "PHOTO_TITLE";
    private static final String KEY_STEP = "STEP";
    private HashMap _$_findViewCache;
    private String filePath = "";
    private String photoTitle = "";
    private int step;

    /* compiled from: ImageResultFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final ImageResultFragment newInstance(int i, String str, String str2) {
            Intrinsics.checkParameterIsNotNull(str, "filePath");
            ImageResultFragment imageResultFragment = new ImageResultFragment();
            Bundle bundle = new Bundle();
            bundle.putInt(ImageResultFragment.KEY_STEP, i);
            bundle.putString(ImageResultFragment.KEY_PATH, str);
            bundle.putString(ImageResultFragment.KEY_PHOTO_TITLE, str2);
            imageResultFragment.setArguments(bundle);
            return imageResultFragment;
        }
    }

    public static final ImageResultFragment newInstance(int i, String str, String str2) {
        return Companion.newInstance(i, str, str2);
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

    protected final String getStepTitle() {
        return this.photoTitle;
    }

    protected final String getMainButtonText() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        String string = context.getString(C0859R.string.next);
        Intrinsics.checkExpressionValueIsNotNull(string, "context!!.getString(R.string.next)");
        return string;
    }

    protected final String getBottomButtonText() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        String string = context.getString(C0859R.string.back);
        Intrinsics.checkExpressionValueIsNotNull(string, "context!!.getString(R.string.back)");
        return string;
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = getArguments();
        if (bundle != null) {
            String string = bundle.getString(KEY_PATH);
            if (string == null) {
                string = "";
            }
            this.filePath = string;
            string = bundle.getString(KEY_PHOTO_TITLE);
            if (string == null) {
                string = "";
            }
            this.photoTitle = string;
            this.step = bundle.getInt(KEY_STEP);
        }
    }

    public final void onMainButtonClicked() {
        ((NewPassportStepPresenter) getPresenter()).uploadImage(this.step, this.filePath);
    }

    public final void onBottomButtonClicked() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    protected final void init() {
        super.init();
        AppCompatImageView appCompatImageView = getBinding().imageView3;
        Intrinsics.checkExpressionValueIsNotNull(appCompatImageView, "binding.imageView3");
        Glide.with(appCompatImageView.getContext()).load(this.filePath).diskCacheStrategy(DiskCacheStrategy.NONE).into(getBinding().imageView3);
    }
}
