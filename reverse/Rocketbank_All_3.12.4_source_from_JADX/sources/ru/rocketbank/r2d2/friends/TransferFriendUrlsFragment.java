package ru.rocketbank.r2d2.friends;

import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;

public class TransferFriendUrlsFragment extends FriendUrlsBaseFragment {
    protected String createMessageSubject(long j) {
        j = String.format("%d %s", new Object[]{Long.valueOf(j), Utils.pluralForm(j, "рубль", "рубля", "рублей")});
        return String.format("Тебе отправлены деньги: %s.", new Object[]{j});
    }

    protected String createMessageBody(long j, String str) {
        j = String.format("%d %s", new Object[]{Long.valueOf(j), Utils.pluralForm(j, "рубль", "рубля", "рублей")});
        return String.format("Привет,\nтебе отправлены деньги: %s. %s", new Object[]{j, str});
    }

    protected String getInfoHeader() {
        return getResources().getString(C0859R.string.strings_fragment_userfeed_transfers_url_take_this);
    }
}
