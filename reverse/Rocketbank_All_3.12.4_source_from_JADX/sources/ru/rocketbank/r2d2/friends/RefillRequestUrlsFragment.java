package ru.rocketbank.r2d2.friends;

import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;

public class RefillRequestUrlsFragment extends FriendUrlsBaseFragment {
    protected String createMessageSubject(long j) {
        j = String.format("%d %s", new Object[]{Long.valueOf(j), Utils.pluralForm(j, "рубль", "рубля", "рублей")});
        return String.format("Отправь %s", new Object[]{j});
    }

    protected String createMessageBody(long j, String str) {
        j = String.format("%d %s", new Object[]{Long.valueOf(j), Utils.pluralForm(j, "рубль", "рубля", "рублей")});
        return String.format("Привет, отправить мне %s без комиссии можно здесь: %s", new Object[]{j, str});
    }

    protected String getInfoHeader() {
        return getResources().getString(C0859R.string.strings_fragment_refill_request_urls_info);
    }
}
