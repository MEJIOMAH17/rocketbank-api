package ru.rocketbank.r2d2.root.chat.outgoing;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.RequestListener;
import com.facebook.share.internal.ShareConstants;
import java.util.Arrays;
import jp.wasabeef.glide.transformations.BlurTransformation;
import jp.wasabeef.glide.transformations.RoundedCornersTransformation;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import me.zhanghai.android.materialprogressbar.IndeterminateProgressDrawable;
import ru.rocketbank.core.model.message.ImageAttachment;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.core.utils.ImageHelper.ImageLoadListener;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.PhotoViewActivity;
import ru.rocketbank.r2d2.databinding.LayoutMessageOutImageBinding;
import ru.rocketbank.r2d2.root.chat.base.ActionListener;
import ru.rocketbank.r2d2.root.chat.outgoing.binding.ImageData;

/* compiled from: OutgoingImage.kt */
public final class OutgoingImage extends OutgoingViewHolder implements ImageLoadListener, ActionListener {
    private final LayoutMessageOutImageBinding binding;
    private final ImageData imageData = new ImageData();
    private boolean lastUploadState;
    private MessageIn message;
    private final RetryMessageListener retryListener;

    public final void onError(Exception exception) {
        Intrinsics.checkParameterIsNotNull(exception, "e");
    }

    public final int widthPrepare(int i, int i2) {
        return i2 < i ? i2 : i;
    }

    public final RetryMessageListener getRetryListener() {
        return this.retryListener;
    }

    public OutgoingImage(Context context, View view, RetryMessageListener retryMessageListener) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        Intrinsics.checkParameterIsNotNull(retryMessageListener, "retryListener");
        super(context, view, retryMessageListener);
        this.retryListener = retryMessageListener;
        view = LayoutMessageOutImageBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(view, "LayoutMessageOutImageBinding.bind(itemView)");
        this.binding = view;
        this.binding.setImageData(this.imageData);
        this.binding.setListener(this);
        view = this.binding.indeterminateProgress;
        Intrinsics.checkExpressionValueIsNotNull(view, "binding.indeterminateProgress");
        view.setIndeterminateDrawable((Drawable) new IndeterminateProgressDrawable(context));
    }

    public final void onRetry() {
        this.imageData.getProgressVisible().set(true);
        this.imageData.getRetryVisible().set(true);
        MessageIn messageIn = this.message;
        if (messageIn != null) {
            this.retryListener.retry(messageIn);
        }
    }

    public final boolean isUploading() {
        MessageIn messageIn = this.message;
        if (!(messageIn != null ? messageIn.isUploading() : false)) {
            messageIn = this.message;
            ImageAttachment imageAttachment = (ImageAttachment) (messageIn != null ? messageIn.getAttachment() : null);
            if (!(imageAttachment != null ? imageAttachment.getUploading() : false)) {
                return false;
            }
        }
        return true;
    }

    public final void onClick() {
        MessageIn messageIn = this.message;
        ImageAttachment imageAttachment = (ImageAttachment) (messageIn != null ? messageIn.getAttachment() : null);
        if (imageAttachment != null) {
            Uri imagePath = imageAttachment.getImagePath();
            String extractImagePath = extractImagePath();
            if (imagePath == null) {
                if (extractImagePath != null) {
                    PhotoViewActivity.Companion.start(getContext(), extractImagePath);
                }
                return;
            }
            PhotoViewActivity.Companion.start(getContext(), imagePath);
        }
    }

    public final void clear() {
        super.clear();
        Glide.clear(this.binding.contentImage);
        this.binding.contentImage.setImageDrawable(null);
    }

    public final boolean getLastUploadState() {
        return this.lastUploadState;
    }

    public final void setLastUploadState(boolean z) {
        this.lastUploadState = z;
    }

    public final void bind(MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(messageIn, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        ImageView imageView = this.binding.contentImage;
        Intrinsics.checkExpressionValueIsNotNull(imageView, "binding.contentImage");
        boolean z = false;
        boolean z2 = imageView.getDrawable() != null;
        MessageIn messageIn2 = this.message;
        if (messageIn2 != null) {
            z = messageIn2.equals(messageIn);
        }
        if (!z) {
            clear();
        } else if (this.lastUploadState == isUploading() && z2) {
            return;
        }
        this.message = messageIn;
        this.lastUploadState = isUploading();
        ImageAttachment imageAttachment = (ImageAttachment) messageIn.getAttachment();
        if (imageAttachment != null) {
            this.imageData.getRetryVisible().set(messageIn.isFailed());
            messageIn = imageAttachment.getWidth();
            int height = imageAttachment.getHeight();
            if (height == 0) {
                height = 100;
            }
            if (messageIn == null) {
                messageIn = 100;
            }
            String extractImagePath = extractImagePath();
            Uri imagePath = imageAttachment.getImagePath();
            if (messageIn > height) {
                loadHorizontal(extractImagePath, messageIn, height, imagePath);
            } else {
                loadVertical(extractImagePath, messageIn, height, imagePath);
            }
        }
    }

    private final String extractImagePath() {
        MessageIn messageIn = this.message;
        ImageAttachment imageAttachment = (ImageAttachment) (messageIn != null ? messageIn.getAttachment() : null);
        if (imageAttachment != null) {
            return imageAttachment.getImage();
        }
        return null;
    }

    public final Transformation<Bitmap>[] getTransformations$App_prodRelease() {
        if (isUploading()) {
            int dimen = getDimen(C0859R.dimen.image_rounding);
            return new Transformation[]{new BlurTransformation(getContext()), new RoundedCornersTransformation(getContext(), dimen, dimen)};
        }
        dimen = getDimen(C0859R.dimen.image_rounding);
        return new Transformation[]{new RoundedCornersTransformation(getContext(), dimen, dimen)};
    }

    private final void loadVertical(String str, int i, int i2, Uri uri) {
        int widthPrepare = widthPrepare(i, getVerticalMaxWidth());
        i = (int) (((float) i2) * (((float) widthPrepare) / ((float) i)));
        if (i == 0) {
            i = 100;
        }
        resize(i, widthPrepare);
        if (uri == null) {
            str = Glide.with(getContext()).load(str);
            Intrinsics.checkExpressionValueIsNotNull(str, "Glide.with(context).load(image)");
        } else {
            str = Glide.with(getContext()).load(uri);
            Intrinsics.checkExpressionValueIsNotNull(str, "Glide.with(context).load(imageUri)");
        }
        str = str.override(widthPrepare, i);
        i = getTransformations$App_prodRelease();
        str.bitmapTransform((Transformation[]) Arrays.copyOf(i, i.length)).into(this.binding.contentImage);
    }

    private final void loadHorizontal(String str, int i, int i2, Uri uri) {
        int widthPrepare = widthPrepare(i, getHorizontalMaxWidth());
        i = (int) (((float) i2) * (((float) widthPrepare) / ((float) i)));
        if (i == 0) {
            i = 100;
        }
        resize(i, widthPrepare);
        this.imageData.getProgressVisible().set(true);
        if (uri == null) {
            str = Glide.with(getContext()).load(str).listener((RequestListener) new OutgoingImage$loadHorizontal$drawableTypeRequest$1(this));
        } else {
            str = Glide.with(getContext()).load(uri).listener((RequestListener) new OutgoingImage$loadHorizontal$drawableTypeRequest$2(this));
        }
        str = str.override(widthPrepare, i).placeholder((Drawable) new ColorDrawable(-7829368));
        i = getTransformations$App_prodRelease();
        str.bitmapTransform((Transformation[]) Arrays.copyOf(i, i.length)).into(this.binding.contentImage);
    }

    public final int getHorizontalMaxWidth() {
        Object systemService = getContext().getSystemService("window");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
        }
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return (int) (((float) point.x) * 0.8f);
    }

    public final int getVerticalMaxWidth() {
        Object systemService = getContext().getSystemService("window");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
        }
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return (int) (((float) point.x) * 0.5f);
    }

    public final void onLoad(GlideDrawable glideDrawable) {
        Intrinsics.checkParameterIsNotNull(glideDrawable, "resource");
        glideDrawable = this.binding.indeterminateProgress;
        Intrinsics.checkExpressionValueIsNotNull(glideDrawable, "binding.indeterminateProgress");
        glideDrawable.setVisibility(8);
    }

    private final void resize(int i, int i2) {
        FrameLayout frameLayout = this.binding.content;
        Intrinsics.checkExpressionValueIsNotNull(frameLayout, "binding.content");
        frameLayout.getLayoutParams().width = i2;
        frameLayout = this.binding.content;
        Intrinsics.checkExpressionValueIsNotNull(frameLayout, "binding.content");
        frameLayout.getLayoutParams().height = i;
        this.binding.content.requestLayout();
        ImageView imageView = this.binding.contentImage;
        Intrinsics.checkExpressionValueIsNotNull(imageView, "binding.contentImage");
        imageView.getLayoutParams().width = i2;
        i2 = this.binding.contentImage;
        Intrinsics.checkExpressionValueIsNotNull(i2, "binding.contentImage");
        i2.getLayoutParams().height = i;
        this.binding.contentImage.requestLayout();
    }
}
