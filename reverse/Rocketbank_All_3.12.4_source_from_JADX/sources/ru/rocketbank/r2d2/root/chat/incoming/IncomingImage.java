package ru.rocketbank.r2d2.root.chat.incoming;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.request.target.SimpleTarget;
import com.jakewharton.rxbinding.view.RxView;
import java.io.File;
import jp.wasabeef.glide.transformations.RoundedCornersTransformation;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.message.ImageAttachment;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.PhotoViewActivity;
import rx.functions.Action1;

/* compiled from: IncomingImage.kt */
public final class IncomingImage extends IncomingViewHolder {
    public static final Companion Companion = new Companion();
    private static final int NONE = 0;
    private ImageAttachment image;
    private ImageView imageView;
    private final int mode = NONE;
    private SimpleTarget<File> targetSimpleTarget;

    /* compiled from: IncomingImage.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public IncomingImage(final Context context, View view) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(context, view);
        view = view.findViewById(C0859R.id.image);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.imageView = (ImageView) view;
        RxView.clicks(this.imageView).subscribe((Action1) new Action1<Void>() {
            public final void call(Void voidR) {
                voidR = this.image;
                if (voidR != null) {
                    voidR = voidR.getImage();
                    if (voidR != null) {
                        PhotoViewActivity.Companion.start(context, voidR);
                    }
                }
            }
        });
    }

    public final void clear() {
        super.clear();
        Glide.clear(this.imageView);
        this.imageView.setImageDrawable(null);
    }

    public final void bind(ImageAttachment imageAttachment) {
        Intrinsics.checkParameterIsNotNull(imageAttachment, "image");
        this.image = imageAttachment;
        this.imageView.setImageDrawable(null);
        if (this.targetSimpleTarget != null) {
            Glide.clear(this.targetSimpleTarget);
        }
        this.targetSimpleTarget = createSimpleTarget();
        imageAttachment = imageAttachment.getImage();
        if (imageAttachment != null) {
            Glide.with(getContext()).load(imageAttachment).downloadOnly(this.targetSimpleTarget);
        }
    }

    private final SimpleTarget<File> createSimpleTarget() {
        return new IncomingImage$createSimpleTarget$1(this);
    }

    private final void loadVertical(String str, float f) {
        int dimen = getDimen(C0859R.dimen.chat_image_width);
        f = (int) (((float) dimen) * f);
        LayoutParams layoutParams = this.imageView.getLayoutParams();
        if (layoutParams == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        }
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(dimen, f);
        layoutParams3.rightMargin = layoutParams2.rightMargin;
        this.imageView.setLayoutParams(layoutParams3);
        this.imageView.requestLayout();
        int dimen2 = getDimen(C0859R.dimen.image_rounding);
        if (this.mode == NONE) {
            Glide.with(getContext()).load(str).override(dimen, f).bitmapTransform(new Transformation[]{new RoundedCornersTransformation(getContext(), dimen2, dimen2)}).into(this.imageView);
            return;
        }
        Glide.with(getContext()).load(str).override(dimen, f).bitmapTransform(new Transformation[]{new RoundedCornersTransformation(getContext(), dimen2, dimen2)}).into(this.imageView);
    }

    private final void loadHorizontal(String str) {
        LayoutParams layoutParams = this.imageView.getLayoutParams();
        if (layoutParams == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        }
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.rightMargin = layoutParams2.rightMargin;
        this.imageView.setLayoutParams(layoutParams3);
        this.imageView.requestLayout();
        int dimen = getDimen(C0859R.dimen.image_rounding);
        Glide.with(getContext()).load(str).bitmapTransform(new Transformation[]{new RoundedCornersTransformation(getContext(), dimen, dimen)}).into(this.imageView);
    }
}
