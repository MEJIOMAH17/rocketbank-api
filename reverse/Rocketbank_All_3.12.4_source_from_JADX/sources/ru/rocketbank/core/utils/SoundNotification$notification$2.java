package ru.rocketbank.core.utils;

import java.util.Map;
import kotlin.Pair;
import kotlin.collections.AbstractList.Companion;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.utils.SoundNotification.NotificationSound;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: SoundNotification.kt */
final class SoundNotification$notification$2 extends Lambda implements Function0<Map<Integer, ? extends NotificationSound>> {
    public static final SoundNotification$notification$2 INSTANCE = new SoundNotification$notification$2();

    SoundNotification$notification$2() {
        super(0);
    }

    public final Map<Integer, NotificationSound> invoke() {
        r0 = new Pair[13];
        r0[0] = new Pair(Integer.valueOf(0), new NotificationSound(C0859R.string.sound_buy, C0859R.raw.buy_gnom, C0859R.raw.buy_human, C0859R.raw.buy_orc, CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.buy_lejeboker1), Integer.valueOf(C0859R.raw.buy_lejeboker)), CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.buy_rickmorty1), Integer.valueOf(C0859R.raw.buy_rickmorty2), Integer.valueOf(C0859R.raw.buy_rickmorty))));
        r0[1] = new Pair(Integer.valueOf(1), new NotificationSound(C0859R.string.sound_cash, C0859R.raw.cash_gnom, C0859R.raw.cash_human, C0859R.raw.cash_orc, CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.cash_lejeboker1), Integer.valueOf(C0859R.raw.cash_lejeboker)), CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.cash_rickmorty1), Integer.valueOf(C0859R.raw.cash_rickmorty))));
        r0[2] = new Pair(Integer.valueOf(2), new NotificationSound(C0859R.string.sound_comission_month, C0859R.raw.comission_month_gnom, C0859R.raw.comission_month_human, C0859R.raw.comission_month_orc, CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.comission_month_lejeboker)), CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.comission_month_rickmorty))));
        r0[3] = new Pair(Integer.valueOf(3), new NotificationSound(C0859R.string.sound_comissoin_transfer, C0859R.raw.comissoin_transfer_gnom, C0859R.raw.comissoin_transfer_human, C0859R.raw.comissoin_transfer_orc, CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.comissoin_transfer_lejeboker)), CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.comission_transfer_rickmorty1), Integer.valueOf(C0859R.raw.comission_transfer_rickmorty))));
        r0[4] = new Pair(Integer.valueOf(4), new NotificationSound(C0859R.string.sound_deposit_open, C0859R.raw.deposit_open_gnom, C0859R.raw.deposit_open_human, C0859R.raw.deposit_open_orc, CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.deposit_open_lejeboker)), CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.deposit_open_rickmorty1), Integer.valueOf(C0859R.raw.deposit_open_rickmorty2), Integer.valueOf(C0859R.raw.deposit_open_rickmorty))));
        r0[5] = new Pair(Integer.valueOf(5), new NotificationSound(C0859R.string.sound_friend_come, C0859R.raw.friend_come_gnom, C0859R.raw.friend_come_human, C0859R.raw.friend_come_orc, CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.friend_come_lejeboker)), CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.friend_come_rickmorty1), Integer.valueOf(C0859R.raw.friend_come_rickmorty))));
        r0[6] = new Pair(Integer.valueOf(6), new NotificationSound(C0859R.string.sound_friend_transfer, C0859R.raw.friend_transfer_gnom, C0859R.raw.friend_transfer_human, C0859R.raw.friend_transfer_orc, CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.friend_transfer_lejeboker1), Integer.valueOf(C0859R.raw.friend_transfer_lejeboker2), Integer.valueOf(C0859R.raw.friend_transfer_lejeboker)), CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.friend_transfer_rickmorty1), Integer.valueOf(C0859R.raw.friend_transfer_rickmorty))));
        r0[7] = new Pair(Integer.valueOf(7), new NotificationSound(C0859R.string.sound_mode_on, C0859R.raw.mode_gnom, C0859R.raw.mode_human, C0859R.raw.mode_orc, CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.mode_lejeboker)), CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.mode_rickmorty1), Integer.valueOf(C0859R.raw.mode_rickmorty2), Integer.valueOf(C0859R.raw.mode_rickmorty))));
        r0[8] = new Pair(Integer.valueOf(8), new NotificationSound(C0859R.string.sound_percent, C0859R.raw.percent_gnom, C0859R.raw.percent_human, C0859R.raw.percent_orc, CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.percent_lejeboker1), Integer.valueOf(C0859R.raw.percent_lejeboker)), CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.percent_rickmorty1), Integer.valueOf(C0859R.raw.percent_rickmorty))));
        r0[9] = new Pair(Integer.valueOf(9), new NotificationSound(C0859R.string.sound_places, C0859R.raw.places_gnom, C0859R.raw.places_human, C0859R.raw.places_orc, CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.places_lejeboker)), CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.places_rickmorty1), Integer.valueOf(C0859R.raw.places_rickmorty))));
        r0[10] = new Pair(Integer.valueOf(10), new NotificationSound(C0859R.string.sound_refill, C0859R.raw.refill_gnom, C0859R.raw.refill_human, C0859R.raw.refill_orc, CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.refill_lejeboker1), Integer.valueOf(C0859R.raw.refill_lejeboker)), CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.refill_rickmorty1), Integer.valueOf(C0859R.raw.refill_rickmorty2), Integer.valueOf(C0859R.raw.refill_rickmorty))));
        r0[11] = new Pair(Integer.valueOf(11), new NotificationSound(C0859R.string.sound_rocket_rouble, C0859R.raw.rocket_rouble_gnom, C0859R.raw.rocket_rouble_human, C0859R.raw.rocket_rouble_orc, CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.rocket_rouble_lejeboker1), Integer.valueOf(C0859R.raw.rocket_rouble_lejeboker)), CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.rocket_rouble_rickmorty1), Integer.valueOf(C0859R.raw.rocket_rouble_rickmorty2), Integer.valueOf(C0859R.raw.rocket_rouble_rickmorty))));
        r0[12] = new Pair(Integer.valueOf(12), new NotificationSound(C0859R.string.sound_support, C0859R.raw.support_gnom, C0859R.raw.support_human, C0859R.raw.support_orc, CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.support_lejeboker1), Integer.valueOf(C0859R.raw.support_lejeboker)), CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf(C0859R.raw.support_rickmorty1), Integer.valueOf(C0859R.raw.support_rickmorty))));
        return Companion.mapOf(r0);
    }
}
