package ru.rocketbank.r2d2.root.chat.incoming;

import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.message.ImageAttachment;

/* compiled from: IncomingImage.kt */
public final class IncomingImage$createSimpleTarget$1 extends SimpleTarget<File> {
    final /* synthetic */ IncomingImage this$0;

    IncomingImage$createSimpleTarget$1(IncomingImage incomingImage) {
        this.this$0 = incomingImage;
    }

    public final void onResourceReady(File file, GlideAnimation<? super File> glideAnimation) {
        Intrinsics.checkParameterIsNotNull(file, "resource");
        Intrinsics.checkParameterIsNotNull(glideAnimation, "glideAnimation");
        glideAnimation = new Options();
        glideAnimation.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), glideAnimation);
        file = this.this$0.image;
        glideAnimation = 100;
        GlideAnimation<? super File> height = file != null ? file.getHeight() : 100;
        ImageAttachment access$getImage$p = this.this$0.image;
        if (access$getImage$p != null) {
            glideAnimation = access$getImage$p.getWidth();
        }
        access$getImage$p = this.this$0.image;
        String image = access$getImage$p != null ? access$getImage$p.getImage() : null;
        if (image != null) {
            if (glideAnimation > height) {
                this.this$0.loadHorizontal(image);
                return;
            }
            this.this$0.loadVertical(image, ((float) height) / ((float) glideAnimation));
        }
    }
}
