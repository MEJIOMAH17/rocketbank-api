package ru.rocketbank.r2d2.root.feed;

/* compiled from: Feed.kt */
public interface Feed {
    void disableRefresh();

    void disableSearchMode();

    void enableSearchMode();

    void hideNotFound();

    void hideProgress();

    void showError(String str);

    void showProgressExecution();
}
