package ru.rocketbank.r2d2.root.operation;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;

/* compiled from: AbstractDetailOperationActivity.kt */
final class AbstractDetailOperationActivity$onSurfaceTextureAvailable$1 implements OnPreparedListener {
    final /* synthetic */ AbstractDetailOperationActivity this$0;

    AbstractDetailOperationActivity$onSurfaceTextureAvailable$1(AbstractDetailOperationActivity abstractDetailOperationActivity) {
        this.this$0 = abstractDetailOperationActivity;
    }

    public final void onPrepared(MediaPlayer mediaPlayer) {
        AbstractDetailOperationActivity.access$getMediaPlayer$p(this.this$0).start();
    }
}
