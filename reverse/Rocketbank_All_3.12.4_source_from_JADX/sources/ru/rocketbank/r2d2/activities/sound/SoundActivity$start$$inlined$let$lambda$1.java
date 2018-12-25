package ru.rocketbank.r2d2.activities.sound;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

/* compiled from: SoundActivity.kt */
final class SoundActivity$start$$inlined$let$lambda$1 implements OnCompletionListener {
    final /* synthetic */ SoundItemData $soundItemData$inlined;
    final /* synthetic */ SoundActivity this$0;

    SoundActivity$start$$inlined$let$lambda$1(SoundActivity soundActivity, SoundItemData soundItemData) {
        this.this$0 = soundActivity;
        this.$soundItemData$inlined = soundItemData;
    }

    public final void onCompletion(MediaPlayer mediaPlayer) {
        this.$soundItemData$inlined.getPlaying().set(false);
        this.this$0.currentSoundItemData = null;
    }
}
