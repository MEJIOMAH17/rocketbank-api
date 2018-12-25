package ru.rocketbank.r2d2.activities.sound;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.SoundNotification.NotificationSound;

/* compiled from: SoundItemData.kt */
public final class SoundItemData {
    private final NotificationSound notification;
    private final OnSoundAction onSoundAction;
    private final ObservableField<Drawable> playImage = new ObservableField();
    private ObservableBoolean playing = new ObservableBoolean((boolean) 0);
    private final ObservableField<String> soundName = new ObservableField();
    private final ObservableField<Drawable> stopImage = new ObservableField();
    private final int type;

    public SoundItemData(NotificationSound notificationSound, int i, OnSoundAction onSoundAction) {
        Intrinsics.checkParameterIsNotNull(notificationSound, "notification");
        Intrinsics.checkParameterIsNotNull(onSoundAction, "onSoundAction");
        this.notification = notificationSound;
        this.type = i;
        this.onSoundAction = onSoundAction;
    }

    public final NotificationSound getNotification() {
        return this.notification;
    }

    public final int getType() {
        return this.type;
    }

    public final OnSoundAction getOnSoundAction() {
        return this.onSoundAction;
    }

    public final ObservableBoolean getPlaying() {
        return this.playing;
    }

    public final void setPlaying(ObservableBoolean observableBoolean) {
        Intrinsics.checkParameterIsNotNull(observableBoolean, "<set-?>");
        this.playing = observableBoolean;
    }

    public final ObservableField<String> getSoundName() {
        return this.soundName;
    }

    public final ObservableField<Drawable> getPlayImage() {
        return this.playImage;
    }

    public final ObservableField<Drawable> getStopImage() {
        return this.stopImage;
    }

    public final void mediaClick() {
        if (this.playing.get()) {
            this.playing.set(false);
            this.onSoundAction.stop(this);
            return;
        }
        this.playing.set(true);
        this.onSoundAction.start(this.type, this.notification, this);
    }
}
