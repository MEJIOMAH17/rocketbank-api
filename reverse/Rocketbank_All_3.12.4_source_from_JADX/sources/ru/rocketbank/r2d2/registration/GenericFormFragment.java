package ru.rocketbank.r2d2.registration;

import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import ru.rocketbank.core.events.EventHelper.IEvent;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MigrationActivity;

public abstract class GenericFormFragment<Model extends Parcelable & IEvent, API> extends FormFragment<Model, API> {
    public Button button;
    public Button buttonBottom;
    public ImageView image;
    public TextView textViewHintBottom;
    public TextView textViewHintTop;

    public static class FormContent {
        private boolean bottomButtonVisible = false;
        private String bottomHintText;
        private int bottomHintTextRes;
        private int buttonBottomTextRes;
        private int buttonTextRes = C0859R.string.migration_next;
        private boolean buttonVisible = true;
        private int imageRes;
        private int topHintTextRes;

        public FormContent setTopHintTextRes(int i) {
            this.topHintTextRes = i;
            return this;
        }

        public FormContent setImageRes(int i) {
            this.imageRes = i;
            return this;
        }

        public FormContent setBottomHintTextRes(int i) {
            this.bottomHintTextRes = i;
            return this;
        }

        public FormContent setButtonTextRes(int i) {
            this.buttonTextRes = i;
            return this;
        }

        public FormContent setButtonVisible(boolean z) {
            this.buttonVisible = z;
            return this;
        }

        public FormContent setButtonBottomTextRes(int i) {
            this.buttonBottomTextRes = i;
            return this;
        }

        public FormContent setBottomButtonVisible(boolean z) {
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
            return this.bottomButtonVisible && getButtonBottomTextRes() != 0;
        }

        public String getBottomHintText() {
            return this.bottomHintText;
        }

        public FormContent setBottomHintText(String str) {
            this.bottomHintText = str;
            return this;
        }
    }

    protected abstract FormContent getFormContent();

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C0859R.layout.fragment_migration_generic, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.textViewHintTop = (TextView) view.findViewById(C0859R.id.textViewHintTop);
        this.image = (ImageView) view.findViewById(C0859R.id.image);
        this.textViewHintBottom = (TextView) view.findViewById(C0859R.id.textViewHintBottom);
        this.button = (Button) view.findViewById(C0859R.id.button);
        this.buttonBottom = (Button) view.findViewById(C0859R.id.buttonBottom);
        initView();
    }

    protected void initView() {
        FormContent formContent = getFormContent();
        CharSequence bottomHintText = formContent.getBottomHintText();
        if (bottomHintText == null) {
            this.textViewHintBottom.setText(formContent.getBottomHintTextRes());
        } else {
            this.textViewHintBottom.setText(bottomHintText);
        }
        this.image.setImageResource(formContent.getImageRes());
        if (formContent.getTopHintTextRes() != 0) {
            this.textViewHintTop.setText(formContent.getTopHintTextRes());
        }
        if (formContent.isButtonVisible()) {
            try {
                this.button.setVisibility(0);
                this.button.setText(formContent.getButtonTextRes());
            } catch (Throwable th) {
                StringBuilder stringBuilder = new StringBuilder("Resource not found ");
                stringBuilder.append(getClass().getName());
                AnalyticsManager.logException(th, stringBuilder.toString());
            }
        } else {
            this.button.setVisibility(4);
        }
        if (formContent.isBottomButtonVisible()) {
            this.buttonBottom.setVisibility(0);
            this.buttonBottom.setText(formContent.getButtonBottomTextRes());
        } else {
            this.buttonBottom.setVisibility(4);
        }
        if (MigrationActivity.DEMO) {
            this.button.setVisibility(0);
        }
    }
}
