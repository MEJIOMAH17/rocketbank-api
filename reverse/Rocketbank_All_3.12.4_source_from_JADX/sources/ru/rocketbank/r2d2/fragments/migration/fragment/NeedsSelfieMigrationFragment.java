package ru.rocketbank.r2d2.fragments.migration.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import okhttp3.MultipartBody.Part;
import ru.rocketbank.core.model.migration.Migration;
import ru.rocketbank.core.model.migration.Migration.Status;
import ru.rocketbank.core.model.migration.MigrationResponse;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MigrationActivity;
import rx.Observable;

public class NeedsSelfieMigrationFragment extends PhotoMigrationFragment {
    Authorization authorization;

    protected int getHintTopReadyTextRes() {
        return C0859R.string.migration_needs_selfie_hint_top_ready_text;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.authorization = getInjector().getAuthorization();
    }

    protected Observable<MigrationResponse> sendPhoto(Part part) {
        if (!MigrationActivity.DEMO) {
            return getMigrationApi().uploadSelfie(part);
        }
        finishStep(new Migration(Status.checking, getMigration().getCities()));
        return Observable.just(null);
    }

    protected Intent getCameraIntent() {
        return super.getCameraIntent().putExtra("android.intent.extras.CAMERA_FACING", 1);
    }

    protected MigrationContent getMigrationContent() {
        return new MigrationContent().setTopHintTextRes(C0859R.string.migration_needs_selfie_hint_top_text).setImageRes("male".equals(this.authorization.getUserImmediate().getGender()) ? C0859R.drawable.selfieman : C0859R.drawable.selfiegirl).setBottomHintTextRes(C0859R.string.migration_needs_selfie_hint_bottom_text).setButtonTextRes(C0859R.string.migration_needs_selfie_button_caption);
    }
}
