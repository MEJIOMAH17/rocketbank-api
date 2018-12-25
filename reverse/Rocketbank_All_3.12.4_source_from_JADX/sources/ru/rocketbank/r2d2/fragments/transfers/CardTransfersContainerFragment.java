package ru.rocketbank.r2d2.fragments.transfers;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.RocketFragment;

public class CardTransfersContainerFragment extends RocketFragment {
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_userfeed_transfers_container, viewGroup, false);
        if (bundle == null) {
            viewGroup = new TransfersFromCardFragment();
            viewGroup.setArguments(getArguments());
            bundle = getChildFragmentManager().beginTransaction();
            bundle.replace(C0859R.id.userfeed_transfers_container, viewGroup);
            bundle.commit();
        }
        return layoutInflater;
    }
}
