package ru.rocketbank.r2d2.fragments;

import android.support.v4.app.Fragment;

public interface NextButtonListener {
    void onNextButtonClick();

    void updateNextButton(Fragment fragment);
}
