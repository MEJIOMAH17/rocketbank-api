package ru.rocketbank.r2d2.registration.fragment;

import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.registration.GenericFormFragment.FormContent;

public class CheckingRegistrationFragment extends GenericRegistrationFragment {
    protected FormContent getFormContent() {
        return new FormContent().setTopHintTextRes(C0859R.string.migration_checking_hint_top_text).setImageRes(C0859R.drawable.doc).setBottomHintTextRes(C0859R.string.migration_checking_hint_bottom_text).setButtonVisible(false);
    }

    public String getTitle() {
        return RocketApplication.getContext().getResources().getString(C0859R.string.step, new Object[]{Integer.valueOf(3)});
    }
}
