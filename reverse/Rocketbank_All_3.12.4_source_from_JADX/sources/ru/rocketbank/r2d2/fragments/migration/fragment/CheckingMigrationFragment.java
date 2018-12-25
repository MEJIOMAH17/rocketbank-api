package ru.rocketbank.r2d2.fragments.migration.fragment;

import ru.rocketbank.core.model.migration.Migration;
import ru.rocketbank.core.model.migration.Migration.Status;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MigrationActivity;

public class CheckingMigrationFragment extends GenericMigrationFragment {
    protected void onButtonBottomClicked() {
    }

    protected MigrationContent getMigrationContent() {
        return new MigrationContent().setTopHintTextRes(C0859R.string.migration_checking_hint_top_text).setImageRes(C0859R.drawable.doc).setBottomHintTextRes(C0859R.string.migration_checking_hint_bottom_text).setButtonVisible(false);
    }

    public void onStartButtonClick() {
        if (MigrationActivity.DEMO) {
            finishStep(new Migration(Status.issuing, getMigration().getCities()));
        }
    }

    protected void onButtonClicked() {
        if (MigrationActivity.DEMO) {
            finishStep(new Migration(Status.issuing, getMigration().getCities()));
        }
    }
}
