package ru.rocketbank.r2d2.fragments.safe;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.util.ArrayMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AvailableAccount;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.fragments.OpenSafeAccountFragment;

/* compiled from: SafeAccountsAdapter.kt */
public final class SafeAccountsAdapter extends FragmentStatePagerAdapter {
    private List<AvailableAccount> availableAccounts;
    private final ArrayMap<String, Integer> titles = new ArrayMap(3);

    public SafeAccountsAdapter(FragmentManager fragmentManager) {
        Intrinsics.checkParameterIsNotNull(fragmentManager, "fragmentManager");
        super(fragmentManager);
        ((Map) this.titles).put("rub", Integer.valueOf(C0859R.string.safe_acc_rub_title));
        ((Map) this.titles).put("usd", Integer.valueOf(C0859R.string.safe_acc_usd_title));
        ((Map) this.titles).put("eur", Integer.valueOf(C0859R.string.safe_acc_euro_title));
    }

    public final String getPageTitle(int i) {
        List list = this.availableAccounts;
        if (list != null) {
            i = (Integer) this.titles.get(((AvailableAccount) list.get(i)).getCurrency());
            if (i == null) {
                i = Integer.valueOf(C0859R.string.safe_acc);
            }
            i = RocketApplication.Companion.getContext().getString(i.intValue());
            if (i != 0) {
                return i;
            }
        }
        return "";
    }

    public final OpenSafeAccountFragment getItem(int i) {
        List list = this.availableAccounts;
        return list != null ? OpenSafeAccountFragment.Companion.newInstance((AvailableAccount) list.get(i)) : 0;
    }

    public final int getCount() {
        List list = this.availableAccounts;
        return list != null ? list.size() : 0;
    }

    public final void swap(List<AvailableAccount> list) {
        Intrinsics.checkParameterIsNotNull(list, "availableAccounts");
        this.availableAccounts = list;
        notifyDataSetChanged();
    }
}
