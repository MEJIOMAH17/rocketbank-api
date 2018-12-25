package ru.rocketbank.r2d2.root.operation;

import ru.rocketbank.r2d2.root.operation.data.OperationViewInputData;

/* compiled from: OperationDataUpdateListener.kt */
public interface OperationDataUpdateListener {
    void dispatchClose();

    void dispatchHideProgress();

    void dispatchShowProgress();

    void dispatchUpdate();

    void hideKeyboard();

    void onCommentUpdateFinished(boolean z, String str);

    void onError();

    void onOperationUpdate(OperationViewInputData operationViewInputData);

    void scrollToPosition(int i);

    void updateText(String str, String str2, String str3);
}
