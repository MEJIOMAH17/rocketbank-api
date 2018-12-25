package ru.rocketbank.r2d2.fragments.migration.fragment;

import ru.rocketbank.core.model.migration.Migration;
import ru.rocketbank.core.model.migration.Migration.Status;
import ru.rocketbank.r2d2.C0859R;

public class DeliveringMigrationFragment extends GenericMigrationFragment {
    protected void onButtonBottomClicked() {
    }

    public void onNextButtonClick() {
    }

    protected MigrationContent getMigrationContent() {
        return new MigrationContent().setTopHintTextRes(C0859R.string.migration_delivering_hint_top_text).setImageRes(C0859R.drawable.shipping).setBottomHintTextRes(getMigration().getStatus() == Status.dhl_delivering ? C0859R.string.migration_dhl_delivering_hint_bottom_text : C0859R.string.migration_delivering_hint_bottom_text).setButtonTextRes(C0859R.string.migration_delivering_button_caption).setButtonVisible(getMigration().getStatus() == Status.dhl_delivering);
    }

    protected void onButtonClicked() {
        Migration migration = getMigration();
        migration.setStatus(Status.ready);
        finishStep(migration);
    }
}
