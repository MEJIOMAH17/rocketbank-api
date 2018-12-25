package ru.rocketbank.r2d2.activities.sound;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;

/* compiled from: SoundActivity.kt */
final class SoundActivity$start$$inlined$let$lambda$2 implements OnPreparedListener {
    final /* synthetic */ SoundItemData $soundItemData$inlined;
    final /* synthetic */ SoundActivity this$0;

    SoundActivity$start$$inlined$let$lambda$2(SoundActivity soundActivity, SoundItemData soundItemData) {
        this.this$0 = soundActivity;
        this.$soundItemData$inlined = soundItemData;
    }

    public final void onPrepared(MediaPlayer mediaPlayer) {
        mediaPlayer.start();
        this.$soundItemData$inlined.getPlaying().set(true);
    }
}
