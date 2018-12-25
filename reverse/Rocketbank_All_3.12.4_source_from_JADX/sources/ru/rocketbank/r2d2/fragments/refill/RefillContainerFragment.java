package ru.rocketbank.r2d2.fragments.refill;

import android.support.v4.app.Fragment;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.ContainerFragment;

@Deprecated
public class RefillContainerFragment extends ContainerFragment {
    public String getActionBarTitle() {
        return "Пополнение";
    }

    protected int getContainerId() {
        return C0859R.id.ref_container;
    }

    protected int getLayoutId() {
        return C0859R.layout.fragment_refill_container;
    }

    protected Fragment getStartupFragment() {
        Fragment userFeedRefillFragment = new UserFeedRefillFragment();
        userFeedRefillFragment.setArguments(getArguments());
        return userFeedRefillFragment;
    }
}
