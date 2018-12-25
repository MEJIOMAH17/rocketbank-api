package ru.rocketbank.core.utils;

import android.media.SoundPool;
import android.util.SparseIntArray;
import java.util.ArrayList;
import java.util.Map;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.manager.AnalyticsManager;

/* compiled from: SoundNotification.kt */
public final class SoundNotification {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(SoundNotification.class), "notification", "getNotification()Ljava/util/Map;"))};
    public static final int GNOM = 3;
    public static final int HUMAN = 2;
    public static final SoundNotification INSTANCE = new SoundNotification();
    public static final int LEJEBOKER = 4;
    public static final int NOT_READY = -1;
    public static final int ORC = 1;
    public static final int RICKMORTY = 5;
    public static final int SYSTEM = 0;
    public static final int TYPE_BUY = 0;
    public static final int TYPE_CASH = 1;
    public static final int TYPE_COMISSION_MONTH = 2;
    public static final int TYPE_COMISSION_TRANSFER = 3;
    public static final int TYPE_DEPOSIT_OPEN = 4;
    public static final int TYPE_FRIENDS_COME = 5;
    public static final int TYPE_FRIENDS_TRANSFER = 6;
    public static final int TYPE_MODE_ON = 7;
    public static final int TYPE_PERCENT = 8;
    public static final int TYPE_PLACES = 9;
    public static final int TYPE_REFILL = 10;
    public static final int TYPE_ROCKET_ROUBLE = 11;
    public static final int TYPE_SUPPORT = 12;
    private static final ArrayList<Integer> cycles = CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0));
    private static SparseIntArray list = new SparseIntArray();
    private static final Lazy notification$delegate = ExceptionsKt__ExceptionsKt.lazy(SoundNotification$notification$2.INSTANCE);
    private static final Integer[] notifications = new Integer[]{Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(3), Integer.valueOf(4), Integer.valueOf(5), Integer.valueOf(6), Integer.valueOf(7), Integer.valueOf(8), Integer.valueOf(9), Integer.valueOf(10), Integer.valueOf(11), Integer.valueOf(12)};
    private static int selectedModeStorage = 0;
    private static SoundPool soundPoolInitialized = null;
    private static int soundPoolType = -1;

    /* compiled from: SoundNotification.kt */
    public static final class NotificationSound {
        private final int gnom;
        private final int human;
        private final ArrayList<Integer> lejeboker;
        private final int name;
        private final int orc;
        private final ArrayList<Integer> rickmorty;

        public static /* bridge */ /* synthetic */ NotificationSound copy$default(NotificationSound notificationSound, int i, int i2, int i3, int i4, ArrayList arrayList, ArrayList arrayList2, int i5, Object obj) {
            if ((i5 & 1) != 0) {
                i = notificationSound.name;
            }
            if ((i5 & 2) != 0) {
                i2 = notificationSound.gnom;
            }
            int i6 = i2;
            if ((i5 & 4) != 0) {
                i3 = notificationSound.human;
            }
            int i7 = i3;
            if ((i5 & 8) != 0) {
                i4 = notificationSound.orc;
            }
            int i8 = i4;
            if ((i5 & 16) != 0) {
                arrayList = notificationSound.lejeboker;
            }
            ArrayList arrayList3 = arrayList;
            if ((i5 & 32) != 0) {
                arrayList2 = notificationSound.rickmorty;
            }
            return notificationSound.copy(i, i6, i7, i8, arrayList3, arrayList2);
        }

        public final int component1() {
            return this.name;
        }

        public final int component2() {
            return this.gnom;
        }

        public final int component3() {
            return this.human;
        }

        public final int component4() {
            return this.orc;
        }

        public final ArrayList<Integer> component5() {
            return this.lejeboker;
        }

        public final ArrayList<Integer> component6() {
            return this.rickmorty;
        }

        public final NotificationSound copy(int i, int i2, int i3, int i4, ArrayList<Integer> arrayList, ArrayList<Integer> arrayList2) {
            Intrinsics.checkParameterIsNotNull(arrayList, "lejeboker");
            Intrinsics.checkParameterIsNotNull(arrayList2, "rickmorty");
            return new NotificationSound(i, i2, i3, i4, arrayList, arrayList2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NotificationSound) {
                NotificationSound notificationSound = (NotificationSound) obj;
                if (this.name == notificationSound.name) {
                    if (this.gnom == notificationSound.gnom) {
                        if (this.human == notificationSound.human) {
                            return (this.orc == notificationSound.orc) && Intrinsics.areEqual(this.lejeboker, notificationSound.lejeboker) && Intrinsics.areEqual(this.rickmorty, notificationSound.rickmorty);
                        }
                    }
                }
            }
        }

        public final int hashCode() {
            int i = ((((((this.name * 31) + this.gnom) * 31) + this.human) * 31) + this.orc) * 31;
            ArrayList arrayList = this.lejeboker;
            int i2 = 0;
            i = (i + (arrayList != null ? arrayList.hashCode() : 0)) * 31;
            arrayList = this.rickmorty;
            if (arrayList != null) {
                i2 = arrayList.hashCode();
            }
            return i + i2;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("NotificationSound(name=");
            stringBuilder.append(this.name);
            stringBuilder.append(", gnom=");
            stringBuilder.append(this.gnom);
            stringBuilder.append(", human=");
            stringBuilder.append(this.human);
            stringBuilder.append(", orc=");
            stringBuilder.append(this.orc);
            stringBuilder.append(", lejeboker=");
            stringBuilder.append(this.lejeboker);
            stringBuilder.append(", rickmorty=");
            stringBuilder.append(this.rickmorty);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }

        public NotificationSound(int i, int i2, int i3, int i4, ArrayList<Integer> arrayList, ArrayList<Integer> arrayList2) {
            Intrinsics.checkParameterIsNotNull(arrayList, "lejeboker");
            Intrinsics.checkParameterIsNotNull(arrayList2, "rickmorty");
            this.name = i;
            this.gnom = i2;
            this.human = i3;
            this.orc = i4;
            this.lejeboker = arrayList;
            this.rickmorty = arrayList2;
        }

        public final int getName() {
            return this.name;
        }

        public final int getGnom() {
            return this.gnom;
        }

        public final int getHuman() {
            return this.human;
        }

        public final int getOrc() {
            return this.orc;
        }

        public final ArrayList<Integer> getLejeboker() {
            return this.lejeboker;
        }

        public final ArrayList<Integer> getRickmorty() {
            return this.rickmorty;
        }
    }

    public final Map<Integer, NotificationSound> getNotification() {
        return (Map) notification$delegate.getValue();
    }

    private SoundNotification() {
    }

    public final void setSelectedMode(int i) {
        selectedModeStorage = i;
    }

    public final int getSelectedMode() {
        return selectedModeStorage;
    }

    public final Integer[] getNotifications() {
        return notifications;
    }

    public final void resetCycles() {
        int size = cycles.size();
        for (int i = 0; i < size; i++) {
            cycles.set(i, Integer.valueOf(0));
        }
    }

    public final int getSound(int i) {
        return getSound(getSelectedMode(), i);
    }

    public final int getSound(int i, int i2) {
        NotificationSound notificationSound = (NotificationSound) getNotification().get(Integer.valueOf(i2));
        if (notificationSound == null) {
            return 0;
        }
        ArrayList lejeboker;
        ArrayList arrayList;
        Integer num;
        switch (i) {
            case 1:
                return notificationSound.getOrc();
            case 2:
                return notificationSound.getHuman();
            case 3:
                return notificationSound.getGnom();
            case 4:
                i = notificationSound.getLejeboker().size();
                lejeboker = notificationSound.getLejeboker();
                arrayList = cycles;
                num = (Integer) arrayList.get(i2);
                arrayList.set(i2, Integer.valueOf(num.intValue() + 1));
                i = lejeboker.get(num.intValue() % i);
                Intrinsics.checkExpressionValueIsNotNull(i, "noty.lejeboker[cycles[type]++ % size]");
                return ((Number) i).intValue();
            case 5:
                i = notificationSound.getRickmorty().size();
                lejeboker = notificationSound.getRickmorty();
                arrayList = cycles;
                num = (Integer) arrayList.get(i2);
                arrayList.set(i2, Integer.valueOf(num.intValue() + 1));
                i = lejeboker.get(num.intValue() % i);
                Intrinsics.checkExpressionValueIsNotNull(i, "noty.rickmorty[cycles[type]++ % size]");
                return ((Number) i).intValue();
            default:
                return 0;
        }
    }

    public final void recreate() {
        synchronized (this) {
            if (selectedModeStorage != soundPoolType) {
                SoundNotification soundNotification = INSTANCE;
                soundPoolInitialized = soundNotification.createSoundPool(soundNotification.getSelectedMode());
                soundPoolType = INSTANCE.getSelectedMode();
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void playSoundNotification(int i) {
        SoundPool soundPool = getSoundPool();
        int i2 = list.get(i, -1);
        if (i2 > 0 && soundPool != null) {
            soundPool.play(i2, 1.0f, 1.0f, 1, 0, 1.0f);
        }
    }

    private final SoundPool getSoundPool() {
        if (getSelectedMode() != soundPoolType) {
            soundPoolInitialized = createSoundPool(getSelectedMode());
            soundPoolType = getSelectedMode();
        }
        return soundPoolInitialized;
    }

    private final SoundPool createSoundPool(int i) {
        list.clear();
        SoundPool soundPool = soundPoolInitialized;
        if (soundPool != null) {
            soundPool.release();
        }
        if (i == 0) {
            return 0;
        }
        int i2 = 0;
        soundPool = new SoundPool(notifications.length, 3, 0);
        Integer[] numArr = notifications;
        BaseRocketApplication context = BaseRocketApplication.getContext();
        int length = numArr.length;
        while (i2 < length) {
            int intValue = numArr[i2].intValue();
            if (((NotificationSound) INSTANCE.getNotification().get(Integer.valueOf(intValue))) != null) {
                try {
                    list.put(intValue, soundPool.load(context, getSound(intValue), 1));
                } catch (Throwable th) {
                    StringBuilder stringBuilder = new StringBuilder("Problem with ");
                    stringBuilder.append(intValue);
                    stringBuilder.append(" in ");
                    stringBuilder.append(i);
                    AnalyticsManager.logException(th, stringBuilder.toString());
                }
            }
            i2++;
        }
        return soundPool;
    }
}
