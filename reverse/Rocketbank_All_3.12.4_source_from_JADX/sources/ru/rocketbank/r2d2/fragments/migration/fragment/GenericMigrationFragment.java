package ru.rocketbank.r2d2.fragments.migration.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MigrationActivity;

public abstract class GenericMigrationFragment extends MigrationFragment {
    protected Button button;
    protected Button buttonBottom;
    protected ImageView image;
    protected TextView textViewHintBottom;
    protected TextView textViewHintTop;

    /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.GenericMigrationFragment$1 */
    class C15401 implements OnClickListener {
        C15401() {
        }

        public void onClick(View view) {
            GenericMigrationFragment.this.onButtonClicked();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.migration.fragment.GenericMigrationFragment$2 */
    class C15412 implements OnClickListener {
        C15412() {
        }

        public void onClick(View view) {
            GenericMigrationFragment.this.onButtonBottomClicked();
        }
    }

    static class MigrationContent {
        private boolean bottomButtonVisible = false;
        private int bottomHintTextRes;
        private int buttonBottomTextRes;
        private int buttonTextRes;
        private boolean buttonVisible = true;
        private int imageRes;
        private int topHintTextRes;

        public MigrationContent setTopHintTextRes(int i) {
            this.topHintTextRes = i;
            return this;
        }

        public MigrationContent setImageRes(int i) {
            this.imageRes = i;
            return this;
        }

        public MigrationContent setBottomHintTextRes(int i) {
            this.bottomHintTextRes = i;
            return this;
        }

        public MigrationContent setButtonTextRes(int i) {
            this.buttonTextRes = i;
            return this;
        }

        public MigrationContent setButtonVisible(boolean z) {
            this.buttonVisible = z;
            return this;
        }

        public MigrationContent setButtonBottomTextRes(int i) {
            this.buttonBottomTextRes = i;
            return this;
        }

        public MigrationContent setBottomButtonVisible(boolean z) {
            this.bottomButtonVisible = z;
            return this;
        }

        public int getTopHintTextRes() {
            return this.topHintTextRes;
        }

        public int getImageRes() {
            return this.imageRes;
        }

        public int getBottomHintTextRes() {
            return this.bottomHintTextRes;
        }

        public int getButtonTextRes() {
            return this.buttonTextRes;
        }

        public int getButtonBottomTextRes() {
            return this.buttonBottomTextRes;
        }

        public boolean isButtonVisible() {
            return this.buttonVisible;
        }

        public boolean isBottomButtonVisible() {
            return this.bottomButtonVisible;
        }
    }

    protected abstract MigrationContent getMigrationContent();

    protected void onButtonBottomClicked() {
    }

    protected void onButtonClicked() {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C0859R.layout.fragment_migration_generic, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        initView();
        this.textViewHintTop = (TextView) view.findViewById(C0859R.id.textViewHintTop);
        this.image = (ImageView) view.findViewById(C0859R.id.image);
        this.textViewHintBottom = (TextView) view.findViewById(C0859R.id.textViewHintBottom);
        this.button = (Button) view.findViewById(C0859R.id.button);
        this.buttonBottom = (Button) view.findViewById(C0859R.id.buttonBottom);
        this.button.setOnClickListener(new C15401());
        this.buttonBottom.setOnClickListener(new C15412());
    }

    protected void initView() {
        MigrationContent migrationContent = getMigrationContent();
        this.textViewHintTop.setText(migrationContent.getTopHintTextRes());
        this.image.setImageResource(migrationContent.getImageRes());
        this.textViewHintBottom.setText(migrationContent.getBottomHintTextRes());
        if (migrationContent.isButtonVisible()) {
            this.button.setVisibility(0);
            this.button.setText(migrationContent.getButtonTextRes());
        } else {
            this.button.setVisibility(4);
        }
        if (migrationContent.isBottomButtonVisible()) {
            this.buttonBottom.setVisibility(0);
            this.buttonBottom.setText(migrationContent.getButtonBottomTextRes());
        } else {
            this.buttonBottom.setVisibility(4);
        }
        if (MigrationActivity.DEMO) {
            this.button.setVisibility(0);
        }
    }
}
