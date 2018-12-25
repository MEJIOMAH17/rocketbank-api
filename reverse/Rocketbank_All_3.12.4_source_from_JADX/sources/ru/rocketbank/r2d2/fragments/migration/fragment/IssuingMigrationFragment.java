package ru.rocketbank.r2d2.fragments.migration.fragment;

import ru.rocketbank.core.model.migration.Migration;
import ru.rocketbank.core.model.migration.Migration.Status;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MigrationActivity;

public class IssuingMigrationFragment extends GenericMigrationFragment {
    protected void onButtonBottomClicked() {
    }

    protected MigrationContent getMigrationContent() {
        return new MigrationContent().setTopHintTextRes(C0859R.string.migration_issuing_hint_top_text).setImageRes(C0859R.drawable.printcard).setBottomHintTextRes(C0859R.string.migration_issuing_hint_bottom_text).setButtonVisible(false);
    }

    public void onStartButtonClick() {
        if (MigrationActivity.DEMO) {
            finishStep(new Migration(Status.card_ready, getMigration().getCities()));
        } else {
            finishStep(new Migration(Status.card_ready, getMigration().getCities()));
        }
    }

    protected void onButtonClicked() {
        onStartButtonClick();
    }
}
