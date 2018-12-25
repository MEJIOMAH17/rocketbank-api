package ru.rocketbank.r2d2.fragments.transfers;

import android.databinding.ObservableField;
import ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData.Kind;
import ru.rocketbank.r2d2.utils.ViewModelObservable;

/* compiled from: TransferBankFragment.kt */
public abstract class RequisitesObservable extends ViewModelObservable {
    public static final Companion Companion = new Companion();
    public static final ObservableField<Kind> kindObservable = new ObservableField();

    /* compiled from: TransferBankFragment.kt */
    public static final class Companion {
        private Companion() {
        }
    }
}
