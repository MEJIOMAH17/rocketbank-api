package ru.rocketbank.r2d2.activities.sound;

import ru.rocketbank.core.utils.SoundNotification.NotificationSound;

/* compiled from: OnSoundAction.kt */
public interface OnSoundAction {
    void start(int i, NotificationSound notificationSound, SoundItemData soundItemData);

    void stop(SoundItemData soundItemData);
}
