package ru.rocketbank.r2d2.fragments.migration.fragment;

import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;

public class CompletedMigrationFragment extends GenericMigrationFragment {
    protected void onButtonBottomClicked() {
    }

    public String getTitle() {
        return RocketApplication.getContext().getString(C0859R.string.migration_completed);
    }

    protected MigrationContent getMigrationContent() {
        return new MigrationContent().setTopHintTextRes(C0859R.string.migration_completed_hint_top_text).setImageRes(C0859R.drawable.yees).setBottomHintTextRes(C0859R.string.migration_completed_hint_bottom_text).setButtonTextRes(C0859R.string.migration_completed_button_text);
    }

    public void onButtonClick() {
        getActivity().finish();
    }

    protected void onButtonClicked() {
        getActivity().finish();
    }
}
