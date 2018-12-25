package ru.rocketbank.r2d2.fragments.migration.fragment;

import okhttp3.MultipartBody.Part;
import ru.rocketbank.core.model.migration.Migration;
import ru.rocketbank.core.model.migration.Migration.Status;
import ru.rocketbank.core.model.migration.MigrationResponse;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MigrationActivity;
import rx.Observable;

public class NeedsPassportMigrationFragment extends PhotoMigrationFragment {
    protected int getHintTopReadyTextRes() {
        return C0859R.string.migration_needs_passport_hint_top_ready_text;
    }

    protected Observable<MigrationResponse> sendPhoto(Part part) {
        if (!MigrationActivity.DEMO) {
            return getMigrationApi().uploadPassportMain(part);
        }
        finishStep(new Migration(Status.needs_registration, getMigration().getCities()));
        return Observable.just(null);
    }

    protected MigrationContent getMigrationContent() {
        return new MigrationContent().setTopHintTextRes(C0859R.string.migration_needs_passport_hint_top_text).setImageRes(C0859R.drawable.passport1).setBottomHintTextRes(C0859R.string.migration_needs_passport_hint_bottom_text).setButtonTextRes(C0859R.string.migration_needs_passport_button_caption);
    }
}
